func methodSwitch() {
    test(topic: "Switch") {
        
        //Switch - метод который позваляет создавать кейсы, так же он имеет больше функционала.
        
        var age = 21
        
        switch age {
        case  0...16: print ("v")
        case  17...21: print ("b")   //если аде находится в диапазоне 17..21 принт "б"
        default:
            break                 // закрытие метода свитч с помощью "брейк"
        }
        
        var arturMustIt = 9
        switch arturMustIt {
        case 1...9: print ("wehry hard")
        default:
            break
        }
        
        var name : String = "Alex"
        switch name {
        case "Alex":
            print("Hi Alex")
        default :
            break
        }
        
        var tuple = ("Artur", 21)
        switch tuple {
        case ("Artur", 21) : print("aaa")      // в кейсе есть тюпл
        default:
            break
        }
        
        let point = (5,5)
        switch point {
        case let (x,y) where x == y:print ("x==y")    // кейсе конст() "когда"  ( == ) : принтани
        case let (x,y) where x == -y:print ("x==-y")
        default:
            break
        }
    }
}
