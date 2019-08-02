/*
Given a string S, remove the vowels 'a', 'e', 'i', 'o', and 'u' from it, and return the new string.
*/

func removeVowels(_ S: String) -> String {
    
    var final = ""
        for char in S {
            if let charValue = char.asciiValue {
                switch charValue {
                    case 97, 101, 105, 111, 117: 
                    continue
                    default: 
                        final.append(char)
                                }
                        }
                    }
    return final
}

print(removeVowels("Robert"))