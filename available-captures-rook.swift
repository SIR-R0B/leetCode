func numRookCaptures(_ board: [[Character]]) -> Int {
        var A = [[Character]]()
        var B = [Character]()
        var rookIndex = [Int]()
        var result: Int = 0
        var newRow = [Character]()
        var rookFound: Bool = false
        var rookBoardIndex = Int()
        
        for row in board{
            newRow = []
            var rookColumn = 0
            var spaceCount = 0
            for square in row{
                if square == "."{        
                spaceCount += 1
                }else{
                    newRow.append(square)
                    if square == "R"{
                        rookIndex.append(rookColumn)
                        rookBoardIndex = rookColumn + spaceCount
                        rookFound = true
                    }
                    rookColumn += 1
                }
            }
            A.append(newRow)
            if rookFound == true{
            rookIndex.insert(A.count-1, at: 0)
            rookFound = false
            }
        }
        //find attackable pawns on same column as rook without going out of bounds looking for it
        for row in 0...A.count-1{
              if board[row][rookBoardIndex] != "." {
                  B.append(board[row][rookBoardIndex])
              }
        }
        if B.count > 1{
            for i in 0...B.count-1{
            if i - 1 >= 0 && B[i] == "R" && B[i-1] == "p"{
                    result += 1
                }
            if i+1 <= B.count-1 && B[i] == "R" && B[i+1] == "p"{
                result += 1
            }
        }
        }
        //find attackable pawns on same row as rook without going out of bounds looking for it
        if A[rookIndex[0]].count > 1 {
        if rookIndex[1] > 0 && A[rookIndex[0]][rookIndex[1] - 1] == "p"{
            result += 1
        } 
        if A.count-1 >= rookIndex[1] + 1 &&  A[rookIndex[0]][rookIndex[1] + 1] == "p"{
            result += 1
        }
        }
        return result
    }

//print(numRookCaptures([[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".","R",".",".",".","p"],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]]))

//print(numRookCaptures([[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".","p",".",".",".","."],["p","p",".","R",".","p","B","."],[".",".",".",".",".",".",".","."],[".",".",".","B",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".",".",".",".",".","."]]))

print(numRookCaptures([[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".","R",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]]))