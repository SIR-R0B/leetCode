func reverseWords(_ s: String) -> String {
        
        let copyS = s.split(separator: " ")
        var result = ""    
        for i in 0..<copyS.count {
            result += "\(String(copyS[i].reversed()))"
            if i == copyS.count-1 {
                break
            } else {
                result += " "
            }
        }
        return result

    }

print(reverseWords("Does this work?"))