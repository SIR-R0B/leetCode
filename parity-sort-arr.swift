func sortArrayByParity(_ A: [Int]) -> [Int] {
        
        var evens = [Int]()
        var odds = [Int]()
        
        for i in 0...A.count-1{
            A[i]%2==0 ? evens.append(A[i]) : odds.append(A[i])
        }
    
        return evens+odds
    }

    print(sortArrayByParity([1,3,5,2,1,5]))