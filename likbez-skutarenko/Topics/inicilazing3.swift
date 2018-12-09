
func inicilazing3() {
    
    test(topic: "Inicilazing3") {

        enum Color: Int {
            case Black
            case White
            init?(_ value:Int) {
                switch value {
                case 0: self = .Black
                case 1: self = .White
                default: return nil
                }
            }
        }
        _ = Color(1)
        //let b = Color(rawValue: 1)
        
        struct Size {
            var width: Int
            var height: Int
            
            init?(width:Int, heigt: Int) {
                return nil
              // self.width = width
              //  if height < 0 {
              //      return nil
                }
              //  print(self.height)
            }
        }
        class Friend {
            var name: String
            init?(name:String) {
                if name.isEmpty{
                    return nil
                }
                self.name = name
            }
        }
        _ = Friend(name: "")
        
        class BestFriend: Friend {
            override init?(name: String){
                if name.isEmpty{
                    super.init(name: "")
                } else {
                    super.init(name: name)!
                }
            }
        }
    }
