func sortedSquares(_ A: [Int]) -> [Int] {

  /*  var copyArr = A
    var i = 0

    while copyArr[i] < 0 {
                    
            copyArr[i] = abs(copyArr[i])
            for j in i..<copyArr.count {
                print("first loop \(copyArr)")
                if copyArr[i] >= copyArr[copyArr.count-1] {
                    print("position \(i) is greater or equal to position \(copyArr.count-1)")
                    copyArr.insert(copyArr[i], at: copyArr.count)
                    copyArr.remove(at: i)
                    i = 0
                    if copyArr[i] >= 0 {
                    print(copyArr)
                        break
                    }
                }
                if copyArr[i] < copyArr[j] && copyArr[i] >= 0 {
                    print("second loop \(copyArr) .. pos \(i) is less than pos \(j)")
                    copyArr.insert(copyArr[i], at: j)
                    copyArr.remove(at: i)
                    i = 0
                    if copyArr[i] >= 0 {
                       break
                    }
                }
            }
            print("This one \(copyArr)")
        } 

        let beginAt = i

        for i in beginAt..<copyArr.count {
            copyArr[i] = copyArr[i] * copyArr[i]
        }*/

    var copyArr = A

    for i in 0..<copyArr.count {
            copyArr[i] = copyArr[i] * copyArr[i]
        }

    return copyArr.sorted()
    }

    print(sortedSquares([-4,0,9,2,2,2,9,-1]))

/*
Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.

 

Example 1:

Input: [-4,-1,0,3,10]
Output: [0,1,9,16,100]
Example 2:

Input: [-7,-3,2,3,11]
Output: [4,9,9,49,121]
 

Note:

1 <= A.length <= 10000
-10000 <= A[i] <= 10000
A is sorted in non-decreasing order.
*/