let morseChars = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]    
    
    func uniqueMorseRepresentations(_ words: [String]) -> Int { 
        var resultSet = Set<String>()
        for w in words {
            resultSet.insert(stringToMorse(w))            
        }                
        return resultSet.count
    }
    
    func stringToMorse(_ input: String) -> String {
        var morse = ""
        for c in input {
            let asciiValue = Int(UnicodeScalar(String(c))!.value)
            let a = 97
            let morseIndex = asciiValue - a
            let morseChar = morseChars[morseIndex]
            morse += morseChar
        }
        return morse
    }
print(uniqueMorseRepresentations(["gin","zen","fizz", "bang"]))
