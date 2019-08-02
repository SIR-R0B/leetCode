func peakIndexInMountainArray(_ A: [Int]) -> Int {

        
        if let result = A.firstIndex(of: A.max()!){
            return result
        }
        
    return -1
    }
print(peakIndexInMountainArray([0,1,0]))