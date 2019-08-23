func sortArrayByParityII(_ A: [Int]) -> [Int] {
        
        var copyArr = [Int](repeating: 0, count: A.count)
        var spacerEvens = 0
        var spacerOdds = 1

        for i in 0..<A.count {
            if A[i] % 2 == 0 {
                copyArr[spacerEvens] = A[i]
                spacerEvens += 2
            }
            if A[i] % 2 != 0 {
                copyArr[spacerOdds] = A[i]
                spacerOdds += 2
            }
        }

        return copyArr
    }

print(sortArrayByParityII([4,2,5,7]))