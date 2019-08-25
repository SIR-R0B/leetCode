
    func fib(_ N: Int) -> Int {

        if N == 0 {
            return 0
        }
        if N == 1 {
            return 1
        }

        var first = 0
        var second = 1
        var next  = 0

        for _ in (2...N){
            
            next = first + second
            first = second
            second = next

        }

        return next
    }


print(fib(4))
