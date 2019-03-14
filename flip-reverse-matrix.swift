 func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        

        var B = [[Int]]() 


        for i in 0...A.count-1{
        B.append(A[i].reversed())
        B[i] = B[i].compactMap({(e) -> Int in 
        return e == 1 ? 0 : 1
        })
        }
        
            return B
    }
    
    print(flipAndInvertImage([[1,1,1],[0,0,0],[1,1,1]]))