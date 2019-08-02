/*func diStringMatch(_ S: String) -> [Int] {
        let numbers = Array(0...S.count)
        var result = [Int]()
        var L = 0
        var R = numbers.count-1
        var i = 0
        var temp = Int()

        func swap(_ index: Int) -> (){
                temp = result[index]
                result[index] = result[index+1]
                result[index+1] = temp
        }
        //initialize result array with the first value then base pushes to result array off of the i+1 value
        if Array(S)[0] == "I"{
            result.append(numbers[L])
            L += 1
        }else{
            result.append(numbers[R])
            R -= 1
        }
        while i < numbers.count-1 {
        if Array(S)[i] == "I"{
            result.append(numbers[L])
            L += 1
            if result[i] > result[i+1]{
                swap(i)
            }
        }else{
            result.append(numbers[R])
            R -= 1
            if result[i] < result[i+1]{
                swap(i)
            }
        }
        i += 1
        }
        return result
    }

print(diStringMatch("DDI"))
*/

/*

*/