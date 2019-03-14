func sortedSquares(_ A: [Int]) -> [Int] {
    
    var result = [Int]()
//assumed in most of the cases the length of the B array we create will end in n != 0 and the following statement will suffice to define the length of the transforming array B
    var lengthB = abs(A[A.count-1])+1

//the length of B is the max of A + 1 so as to accomodate zero indexing through the transformation array B ie max(A) == 10 means a B array of length 11 (10+1) so as to allow for all absolute values in the range 0..<10 inclusive. The below conditions handle when max(A) == 0 and could therefore be preceded by values in A whose abs values are > 0, necessitating a larger length for B
        if lengthB == 1 {
            var i = A.count-1
            if i == 0 {
                result.append(0)
                return result
            } else {
                while (A[i] == 0) {
                if i == 0 {
                    break
                        } else{
                                i -= 1
                                }
                }
                    if lengthB == 1 && A[i] == 0{
                    for _ in 0...A.count-1{
                    result.append(0)
                    }
                    return result
                    }
                    lengthB = abs(A[i])+1
                } 
            }
    //what if lengthB+1 is less than A.count? for example in the case of [-55,0,1,1], we can't rely on abs max is 1

    if (lengthB < A.count+1 || lengthB < abs(A[0])+1) {
        
        lengthB = abs(A[0])+1

            if (lengthB < A.count){
            lengthB = A.count+1
            }
    }

    var B = [Int](repeating: 0, count: lengthB)
    var currentIndexVal: Int
    
    for i in 0...A.count-1{
        currentIndexVal = abs(A[i])
        B[currentIndexVal] += 1
    }

    for i in 0...B.count-1{
        if B[i] == 1{
            result.append(i*i)
        }
        else{
            if B[i] > 1{
                for _ in 1...B[i]{
                    result.append(i*i)
                }
            }
        }
    }
    return result

}

print(sortedSquares([-3,0,2]))