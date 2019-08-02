func sumOfDigits(_ A: [Int]) -> Int {
        
        var min = A[0]

        for i in 1..<A.count {
           if A[i] < min {
               min = A[i]
           }
        }

        var sumOfDigits = 0

        let minArray = Array(String(min))

        for each in minArray {
            sumOfDigits += Int(String(each))!
        }

        if sumOfDigits % 2 != 0 {
            return 0
        } else {
            return 1
        }

    }

print(sumOfDigits([34,23,11,24,75,33,54,8]))