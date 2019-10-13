/*
Given a non-empty array of integers, every element appears twice except for one. Find that single one.

Note:

Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

Example 1:

Input: [2,2,1]
Output: 1

Example 2:

Input: [4,1,2,1,2]
Output: 4
*/

func singleNumber(_ nums: [Int]) -> Int {

    let numsCount = nums.count

    if numsCount < 2 {
        return nums[0]
    }

    let numsArray = nums.sorted()
    print(numsArray)
    var i = 0
    while i < numsArray.count-1 {
        if numsArray[i] != numsArray[i+1] {
            return numsArray[i]
        } else {
            i += 2
        }
    }

return numsArray[i]

}

print(singleNumber([4,4,2,1,2]))
print(singleNumber([-1]))
print(singleNumber([-1,-1,2])) //didn't think about hashing with negatives in the mix, hash function?

