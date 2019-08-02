class Solution {
    static func defangIPaddr(_ address: String) -> String {
        
        var newStr = ""

        for char in address {
            if char == "." {
                newStr.append("[.]")
            } else {
                newStr.append(char)
            }
        }

        return newStr
    }
}
    print(Solution.defangIPaddr("1.1.1.1"))
    
/*
func defangIPaddr(_ address: String) -> String {

    var str = Array(address)
    var i = 0
    var count = str.count
	
    while i < count{
        
        if str[i] == "."{
            str.insert("[", at: i)
            str.insert("]", at: i+2)
			
			// if the character is found, increment the current and the total counts accordingly
            i += 2
            count += 2
        }
        i += 1
       
    }
    
    return String(str)
}
*/