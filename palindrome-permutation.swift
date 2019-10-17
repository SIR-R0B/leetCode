func canPermutePalindrome(_ s: String) -> Bool {
        let charArray = s.map { $0 }
        let charSet = Set(charArray)
    if s.count%2 == 0 {
        // even count string, every char must have even count
        for char in charSet {
            if charArray.filter( { $0 == char} ).count % 2 != 0 {
                return false
            }
        }
    } else {
        // odd count string, only one character can stand alone in the middle, and that character can appear 1,3, 5 times etc.
        var oddCount = 0
        for char in charSet {
            if charArray.filter( { $0 == char} ).count % 2 != 0 {
                oddCount += 1
                if oddCount > 1 {
                    return false
                }
            }
    }
    }
        return true
    }

print(canPermutePalindrome("codes"))
print(canPermutePalindrome("oott"))
print(canPermutePalindrome("oortt"))
print(canPermutePalindrome("oorrrtt"))
print(canPermutePalindrome("aoorrrtta"))
print(canPermutePalindrome("aoorrdrtta"))



