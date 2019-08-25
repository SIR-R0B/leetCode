func calculateTime(_ keyboard: String, _ word: String) -> Int {
        
        var position = 0
        var charSum = 0

        let keyArray = Array(keyboard)

        for char in word {
            charSum += abs(keyArray.firstIndex(of: char)! - position)
            position = abs(keyArray.firstIndex(of: char)!)
        }

        return charSum
    }

    print(calculateTime("abcdefghijklmnopqrstuvwxyz","cba"))
    print(calculateTime("pqrstuvwxyzabcdefghijklmno","leetcode"))