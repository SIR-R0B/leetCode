func judgeCircle(_ moves: String) -> Bool {

    var x: Int = 0; var y: Int = 0; 
    for move in moves{
        switch move {
        case "U":
        x += 1    
        case "D":
        x -= 1 
        case "L": 
        y += 1    
        case "R": 
        y -= 1 
        default: 
        return false
    }
    }
    return (x == 0 && y == 0) ? true : false
    }

print(judgeCircle("UDLR"))