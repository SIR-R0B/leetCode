    func countCharacters(_ words: [String], _ chars: String) -> Int {

        var scalarArray = [Int](repeating: 0, count: 123)
        var sum = 0
        var wordSum = 0

        for scalar in chars.unicodeScalars {
            scalarArray[Int(scalar.value)] += 1
        }

        for each in words {
            var copyScalarArray = scalarArray
            for char in each {
                if copyScalarArray[Int(char.asciiValue!)] == 0 {
                    wordSum = 0
                    break
                } else {
                    copyScalarArray[Int(char.asciiValue!)] -= 1
                }
                wordSum += 1
            }
            sum += wordSum
            wordSum = 0
        }
        
        return sum
    }

    print(countCharacters(["hello","world","leetcode"],"welldonehoneyr"))