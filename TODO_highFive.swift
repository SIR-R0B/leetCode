//unfinished

func highFive(_ items: [[Int]]) -> [[Int]] {

        // could find the unique id count then find the highest number in original array, check counter at 5, and sort over to a new list

        // create a set, throw all the ids in there, see how many unique you have

        var idSet = Set<Int>()
        
        // pluck out the high five for each id

        for i in 0..<items.count {

            idSet.insert(items[i][0])
            print(items[i][0])


        }
           // print(idSet.count)
        
        var topFiveArray = [[Int]]()

        for element in items {

        }

        // then calculate the average for each id


        return [[1]]
    }

    highFive([[1,91],[1,92],[2,93],[2,97],[1,60],[2,77],[1,65],[1,87],[1,100],[2,100],[2,76]])