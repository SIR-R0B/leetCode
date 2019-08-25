func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        
         var newArr = [Int]()
         var nonAppearArr = [Int]()

         var hashArr1 = [Int](repeating: 0, count: 1 + arr1.max()!) 

         for each in arr1 {
             if arr2.contains(each) {
             hashArr1[each] += 1
             } else {
                 nonAppearArr.append(each)
             }
         }

        for each in arr2 {
            if hashArr1[each] > 0 {
                for _ in 1...hashArr1[each]{
                newArr.append(each)
                }
            }
        }

        return newArr + nonAppearArr.sorted()
    }

print(relativeSortArray([2,3,1,3,2,4,6,7,9,2,19],[2,1,4,3,9,6]))