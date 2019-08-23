   func isMajorityElement(_ nums: [Int], _ target: Int) -> Bool {
        
        var result = false
        var majorityThreshold = (nums.count/2)+1

        for i in 0..<nums.count {
            if nums[i] == target {
                majorityThreshold -= 1
                if majorityThreshold == 0 {
                    result = true
                    break
                }
            }
        } 


        return result
    }

print(isMajorityElement([10,100,101,101], 101))