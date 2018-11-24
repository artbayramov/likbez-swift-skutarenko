//Расширение - это позволяет расширить какой то класс, т.е добавит какие то методы, так же расширяют структуры и энумы, могут добавить комп-прапертись, сабскрипты , реализация протокола.

extension Int {    // это есть расширение
    
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return !isEven
    }
    
    enum EvenOrOdd {
        case Even
        case Odd
    }
    
    var evenOrOdd: EvenOrOdd {
        return isEven ? .Even : .Odd
    }
    
    func pow(value: Int) -> Int {
        var temp = self
        for _ in 1..<value {
            temp *= self
        }
        return temp
    }
    
    mutating func powTo(value:Int) {
        self = pow(value: value)
    }
    
    var binaryString : String{
        var result = ""
        for i in 0..<8 {
            result = ""
        }
        return result
    }
}

extension String {
    init(_ value:Bool) {
        self.init(value ? 1 : 0)
    }
}

extension Int.EvenOrOdd {
    var string : String {
        switch self {
        case .Even: return "even"
        case .Odd: return "odd"
        }
    }
}


func extensionTest() {
    
    test(topic: "Extension") {
        
        var a = 5
        
        if a % 2 != 0 {
            print ("a")
        }
        
        if a.isOdd {
            print("a")
        }
        
        print(a.evenOrOdd.string)
        print(a.pow(value: 4))
        print(a)
        a.powTo(value: 4)
        a = 1
        a.binaryString
        
        
        let  s = "Hello, World!"
        String()
        let start = s.startIndex
        let end = s.startIndex

        }
}
