func Method() {
    
    test(topic: "Method") {

        //Методы - это просто, те же функции которые взаимодействуют с классами и конструкциями + энумами
        struct Point {
            var x : Int
            var y : Int
            
            func move(byX x:Int, andY y:Int)  {
                
            }
        }
        
        func move( point: Point, byX: Int, andY: Int) -> Point {
            //point.x  += byX
            //point.y  += andY
            return point
        }
        var p = Point(x: 1, y: 1)
        //move (point: 2, byX: 2, andY: 4)
        p = move(point: p, byX: 2, andY: 4)
        
        enum Color {
            case White
            case Black
            
            mutating func invert () {
                if self == Color.White {
                    self = .Black
                } else {
                    self = .White
                }
                //self = self == .White ? .Black : .White
            }
            func print() {
                if self == Color.White {
                } else {
                }
            }
        }
   }
}
