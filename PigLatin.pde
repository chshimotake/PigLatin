public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
{
	for(int g=0;g<sWord.length();g++)
	{
    	if(sWord.charAt(g)=='a'||sWord.charAt(g)=='e'||sWord.charAt(g)=='i'||sWord.charAt(g)=='o'||sWord.charAt(g)=='u')
    	{
      		return g;
    	}
  	}
  	return -1;
}


public String pigLatin(String sWord)
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	if(findFirstVowel(sWord)==0)
	{
		return sWord+"way";
	}
	if(sWord.charAt(0)=='q'&&sWord.charAt(1)=='u')
	{
		sWord=sWord.substring(2,sWord.length());
		return sWord+"quay";
	}
	if(findFirstVowel(sWord)!=0)
	{
		char firstCons=sWord.charAt(0);
		sWord=sWord.substring(1,sWord.length());
		return sWord+firstCons+"ay";
	}
	else
	{
		return "ERROR!";
	}
}
/*
1. For sWords that are all consonants, 
simply add "ay" to the end of the sWord. 
Thus, "try" becomes "tryay".

2. For sWords that begin with vowels, 
simply add "way" to the end of the sWord. 
Thus, "a" becomes "away"; 
"at" becomes "atway"; 
"ermine" becomes "ermineway."  

3. For sWords beginning with "qu," 
move the "qu" to the end of the sWord and add ay. 
Thus "question" becomes "estionquay".

4. For sWords that begin with consonants, 
move the leading consonant(s) to the end 
of the sWord and add "ay." 
Thus, "ball" becomes "allbay"; 
"button" becomes "uttonbay"; 
"star" becomes "arstay"; 
"three" becomes "eethray";
*/
