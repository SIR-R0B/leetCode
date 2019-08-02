func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {

        var newArr = A

        for i in 0..<newArr.count {
            newArr[i] = newArr[i].reversed()
            for j in 0..<newArr[i].count {
                if newArr[i][j] == 0 {
                    newArr[i][j] = 1
                } else {
                    newArr[i][j] = 0
                }
            }
        }

        return newArr
    }

print(flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]]))