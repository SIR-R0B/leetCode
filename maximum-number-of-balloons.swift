func maxNumberOfBalloons(_ text: String) -> Int {

        let word = "balloon"
        var hash = [Int](repeating: 0, count: 15)
        var result : Int
        
        let filtered = text.filter { word.contains($0) }

        for each in filtered {
            hash[(Int(each.asciiValue!)-97)] += 1
        }

        if hash[11] < 2 || hash[14] < 2 {
            return 0
        } else {
            if hash[11] < hash[14] {
            result = hash[11]/2            
            } else {
            result = hash[14]/2    
            }
            if hash[0] < result {
            result = hash[0]
            }
            if hash[1] < result {
            result = hash[1]
            }
            if hash[13] < result {
            result = hash [13]
            }
        }
        return result

    }

print(maxNumberOfBalloons("balloonballoonlllllllooballoon"))