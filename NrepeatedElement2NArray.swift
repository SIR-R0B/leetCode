func repeatedNTimes(_ A: [Int]) -> Int {

        var result = [Int](repeating: 0, count: 10000)

        for i in 0..<A.count {
            result[A[i]] += 1
        }

        for i in 0..<result.count {
            if result[i] == A.count/2 {
                return i
            } else {
                continue
            }
        } 
        return -1
    }

 print(repeatedNTimes([1,2,3,3]))   

/*
In a array A of size 2N, there are N+1 unique elements, and exactly one of these elements is repeated N times.

Return the element repeated N times.

 

Example 1:

Input: [1,2,3,3]
Output: 3
Example 2:

Input: [2,1,2,5,3,2]
Output: 2
Example 3:

Input: [5,1,5,2,5,3,5,4]
Output: 5

*/