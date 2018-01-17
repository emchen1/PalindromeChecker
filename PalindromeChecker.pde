public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = noCapitals(word);
  word = noSpaces(word);
  word = onlyLetters(word);  
  if(reverse(word).equals(word))
  return true;
  return false;
}
public String reverse(String sWord)
{
    String sNew = new String();
int nLast = sWord.length()-1;
for(int nI=nLast; nI>=0; nI--){
sNew = sNew + sWord.charAt(nI);
}
return sNew;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
  String s= "";
  for(int i=0; i<sWord.length(); i++)
  {
    if(sWord.charAt(i) != ' ')
    s = s + sWord.charAt(i);
  }
  return s;
  
}
public String onlyLetters(String sWord){
  String s= "";
  for(int i=0; i<sWord.length(); i++)
  {
    if(Character.isLetter(sWord.charAt(i)))
    s = s + sWord.charAt(i);
  }
  return s;
  
}