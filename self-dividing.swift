func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {

        var result = [Int]()


        for num in left...right{
            var zeroFlag = false
            var failFlag = false

            if num%10 == 0{
                continue
            }
            var digits = Array(String(num))
            print(digits.count)
           for i in 0...digits.count-1{
                if digits[i] == "0"{
                    zeroFlag = true
                    break
                }
                if num%Int(String(digits[i]))! != 0 {
                    failFlag = true
                    break
                }
                
            }

            if zeroFlag == false && failFlag == false{
                result.append(num)
            }

            print(digits)
            print(num)
        }

        return result
    }

    print(selfDividingNumbers(1,22))