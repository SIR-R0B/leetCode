/*
We are given an array A of N lowercase letter strings, all of the same length.
Now, we may choose any set of deletion indices, and for each string, we delete all the characters in those indices.
For example, if we have an array A = ["abcdef","uvwxyz"] and deletion indices {0, 2, 3}, then the final array after deletions is ["bef", "vyz"], and the remaining columns of A are ["b","v"], ["e","y"], and ["f","z"].  (Formally, the c-th column is [A[0][c], A[1][c], ..., A[A.length-1][c]].)
Suppose we chose a set of deletion indices D such that after deletions, each remaining column in A is in non-decreasing sorted order.
Return the minimum possible value of D.length.

Example 1:

Input: ["cba","daf","ghi"]
Output: 1
Explanation: 
After choosing D = {1}, each column ["c","d","g"] and ["a","f","i"] are in non-decreasing sorted order.
If we chose D = {}, then a column ["b","a","h"] would not be in non-decreasing sorted order.

Example 2:

Input: ["a","b"]
Output: 0
Explanation: D = {}

Example 3:

Input: ["zyx","wvu","tsr"]
Output: 3
Explanation: D = {0, 1, 2}
 
Note:
1 <= A.length <= 100
1 <= A[i].length <= 1000
*/
func minDeletionSize(_ A: [String]) -> Int {
        var result = 0
        var columns = [String]()
        var deletionIndex = [Int](repeating: 0, count: A.count)

        func allSorted(_ arr: [String]) -> Bool{
        for i in 0...arr.count-1{
            if String(arr[i].sorted(by: <)) != arr[i]{
                return false
            }
        }
            print(arr)
            return true
        }
        func generateColumns(_ B: [String]) -> [String]{
            print("generate columns from: \(B)")
            columns = []
            let numWords = Array(B[0]).count
            for i in 0...numWords-1{
            var word = ""
            for j in 0...B.count-1{
                word += String(Array(B[j])[i])
            }
            columns.append(word)
        }
        return columns
        }
        func countUnsortedPairs(_ C: [String]) -> Int{
            result += 1
            print("columns: \(C)")
            for i in 0...C[0].count-2{
                for j in 0...C.count-1{
                    let a = (Int(UnicodeScalar(String(Array(C[j])[i]))!.value))
                    let b = (Int(UnicodeScalar(String(Array(C[j])[i+1]))!.value))
                    print(a,b)
                    if a > b{
                       deletionIndex[i] += 1
                        }
                    }
                }
                print("deletionIndex: \(deletionIndex)")
                print("Index to delete: \(deletionIndex.index(of: deletionIndex.max()!)!)")
            return deletionIndex.index(of: deletionIndex.max()!)!
            }
        func deleteColumn(_ index: Int, _ D: [String]) -> [String]{
            var deletionArray = [String]()
            let numWords = D.count

            var colArray = generateColumns(D)
            print("Delete from this array: \(colArray)")
            print("Numwords: \(numWords)")

            for i in 0...colArray.count-1{
                print("i is \(i) of \(numWords-1)")
            var word = ""
            for j in 0...numWords-1{
                print("[\(i)][\(j)] element \(String(Array(colArray[i])[j]))")
                if j != index{
                word += String(Array(colArray[i])[j])                    
                }
            }
            deletionArray.append(word)
        }
            print("Deletion Array: \(deletionArray)")
            return deletionArray
        }
        // case where string size is 1 and already sorted column
        if A[0].count < 2 && allSorted(A) == true{
            return 0
        } else{
            //case where string size > 1 and already sorted cols
            if allSorted(generateColumns(A)) == true{
                return 0
            }
        }
        //string size > 1 and unsorted
        let next = deleteColumn(countUnsortedPairs(generateColumns(A)),A)
        if allSorted(next) == true{
            return result
        } else {
            result += minDeletionSize(next)
        }
        return result
}

//print(minDeletionSize(["cbz","dea","ghi"])) //1
//print(minDeletionSize(["cba","daf","ghi"])) //1
//print(minDeletionSize(["zyx","wvu","tsr"])) //3
//print(minDeletionSize(["aej","bfk","cgl","dhm","ein"])) //0
//print(minDeletionSize(["a","b","c","d","e"])) //0
print(minDeletionSize(["rrjk","furt","guzm"]))
