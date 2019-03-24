func peakIndexInMountainArray(_ A: [Int]) -> Int {

    return A.index(of: A.max()!)!

    }

print(peakIndexInMountainArray([0,2,1,0]))