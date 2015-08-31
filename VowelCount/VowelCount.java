// VOWEL COUNT
// LANGUAGE: JAVA

// Create a VowelCount class with a vowelCount method and a main method.
// The vowelCount method should contain the algorithm and the main method
// should be used for testing your algorithm.To make testing easier, make the vowelCount method static.

// Given an input of a String sentence, count the number of vowels that occur in the sentence.
// Return a HashMap object containing the vowels as keys and their counts as values.

// Example:
// HashMap vowelMap = VowelCount.vowelCount("mary had a little lamb");
// vowelMap.get('a'); // 4
// vowelMap.get('i'); // 1
// vowelMap.get('e'); // 1
// vowelMap.get('o'); // null
// HashMap vowelMap = VowelCount.vowelCount("do we control our computers, or do they control us?");
// vowelMap.get('o'); // 8
// vowelMap.get('i'); // 3
// vowelMap.get('e'); // 3
// vowelMap.get('u'); // 3


import java.util.HashMap;

class VowelCount {

  public static HashMap vowelCount(String sentence){
    HashMap<Character, Integer> vowels = new HashMap<Character, Integer>();
    for (int i = 0; i < sentence.length(); i++){
      char letter = sentence.charAt(i);
      if ("aeiou".indexOf(letter) != -1){
        if (vowels.get(letter) == null) {
          vowels.put(letter, 0);
        }
        vowels.put(letter, vowels.get(letter) + 1);
      }
    }
    return vowels;
  }

  public static void main(String[] args){
    HashMap result = VowelCount.vowelCount("mary had a little lamb");
    System.out.println(result.get('a'));
    System.out.println(result.get('i'));
    System.out.println(result.get('e'));
    System.out.println(result.get('o'));
  }
}
