func hammingDistance(_ x: Int, _ y: Int) -> Int {

        var a = Array(String(y,radix:2))
        var b = Array(String(x,radix:2))
        
        while a.count < b.count {
            a.insert("0", at: 0)
        }
        while b.count < a.count {
            b.insert("0", at: 0)
        }
        var count = 0
        for i in 0...a.count-1{
            if a[i] != b[i] {
                count += 1
            }
        }
        return count
    }

print(hammingDistance(4,800))