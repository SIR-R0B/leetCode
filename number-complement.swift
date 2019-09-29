/*Given a positive integer, output its complement number. The complement strategy is to flip the bits of its binary representation.

Note:
The given integer is guaranteed to fit within the range of a 32-bit signed integer.
You could assume no leading zero bit in the integer’s binary representation.
Example 1:
Input: 5
Output: 2
Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.
*/

import Foundation

func numComp(_ num: Int) -> Int {

    let numBinary = String(num, radix: 2)

    var numComp = ""

    for each in numBinary {
        each == "1" ? numComp.append("0") : numComp.append("1")
    }

    let result = Int(numComp, radix: 2)

    return result!

/*
    var arr = [Int]() 

    for digit in result {
        digit == "1" ? arr.append(0) : arr.append(1)
    }

    arr = arr.reversed()
    var sum = 0

   for i in 0..<arr.count {
        if arr[i] == 1 {
            sum = sum + (pow(2.0,i) as NSDecimalNumber).intValue
        } else {
            continue
        }
    }

    
    return sum

*/
}

print(numComp(10))
