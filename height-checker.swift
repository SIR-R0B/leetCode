func heightChecker(_ heights: [Int]) -> Int {

    var copyArr = heights.sorted()
    var result = 0

    for i in 0..<heights.count {
        if copyArr[i] != heights[i]{
            result += 1
            continue
        }
    }

    return result
        
    }

print(heightChecker([1,1,4,2,1,3]))