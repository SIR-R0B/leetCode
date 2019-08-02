
//The k-digit number N is an Armstrong number if and only if the k-th power of each digit sums to N. Given a positive integer N, return true if and only if it is an Armstrong number.
import Darwin

func isArmstrong(_ N: Int) -> Bool {

    let nString = String(N)
    let count = Double(nString.count)
    var sum = 0

    for num in nString {
        if let convertedNum = Double(String(num)) {
            sum += Int(pow(convertedNum,count))
            if sum > N {
            return false
            }
        } else {
            return false
        }
    }

if sum == N {
    return true
} else {
    return false
}
}

print(isArmstrong(222)) 