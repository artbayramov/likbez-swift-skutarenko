
func Enum() {
    
    test(topic: "Enum") {
        enum Direction {
            case Left
            case Right
        }
        enum Action {
            case Walk(meters: Int)
            case Run(meters: Int, speed:Int)
            case Stop
            case Turn(direction: Direction)
        }
        //Ассоциативные значения применяются
        /*
        var action = Action.Run(meters: 20, speed: 15)
        action = .Stop
        action = .Walk(meters:10)
        action = .Turn(direction: .Left)
        */
        /*
        switch action.self {
        case .Stop: print("Stop")
        case .Walk(let meter):
            print("Walk \(meter) meters")
        case .Run(let m, let s):
            print ("run\(m) meters with speed \(s)")
        case .Turn(let dir) where dir == .Left: break
            
        default:
            break
        }
    }
}
*/
}
}
