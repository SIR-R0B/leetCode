/*Given an array A of strings made only from lowercase letters, return a list of all characters that show up in all strings within the list (including duplicates).  For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.

You may return the answer in any order.
*/

func commonChars(_ A: [String]) -> [String] {

        var copyA = A
        var newArr = [String]()
        for each in copyA {
            for char in each {
                for i in 1..<copyA.count {
                    if copyA[i].contains(char) {
                        copyA[i].remove(at: copyA[i].firstIndex(of: char)!)
                        if i == copyA.count-1 {
                            newArr.append(String(char))
                        }
                    } else {
                        break
                    }
                }
            }
            return newArr
        }
        return [""]
    }

print(commonChars(["cool","lock","cook"]))