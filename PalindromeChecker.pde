public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String aWord = onlyLetters(word);
  String bWord = noSpaces(aWord);
  String cWord = noCapitals(bWord);
  if(cWord.equals(reverse(cWord))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int last = str.length()  - 1;
    for(int i = last; i>= 0; i--){
    sNew = sNew+ str.substring(i, i+1);
  }
    return sNew;
}
public String onlyLetters(String sString){
  String s = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      s = s + sString.substring(i,i+1);
    }
  }
  return s;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
  String s = "";
  for(int i = 0; i < sWord.length(); i++){
    if(!sWord.substring(i,i+1).equals(" ")){
      s = s + sWord.substring(i, i+1);
    }
  }
  return s;
}
