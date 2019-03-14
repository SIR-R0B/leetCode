func minDeletionSize(_ A: [String]) -> Int {
        
        var columns = [[Character]]()
        var initLenA = Array(A[0]).count //given to be at least 1
        var result = 0
        //pre-sorted array with 1 character in each string
       if initLenA == 1{
            for i in 0...A.count-1{
                columns.append(Array(A[i])[0])
                        }
                let columnSorted = columns.sorted()
                if columnSorted == columns {
                   return 0
                    }
               }

        for i in 0...A.count-1{
            for j in 0...initLenA-1{
            columns.append([Array(A[j])[i]])
            }
        }
 
        var colString = String(columns)
        
        //print(colString[colString.index(before: initLenA)])
        print("Final: \(columns)")
        print(colString)


        return -1
    }

//print(minDeletionSize(["cba","daf","ghi"]))
print(minDeletionSize(["zyx","wvu","tsr"]))
//print(minDeletionSize(["a","b","c","d","e"]))