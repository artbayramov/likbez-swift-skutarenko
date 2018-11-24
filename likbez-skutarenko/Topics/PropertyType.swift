func propertyType() {
    
    test(topic: "Property Type") {
        class Human {
            var name : String
            let maxAge = 100
            var age: Int {
                didSet {
                    if age > maxAge {
                        age = oldValue
                    }
                }
            }
            init(name: String, age: Int) {
                self.name = name
                self.age = age
            }
        }
        enum Direction {
            static let enumDescription = "Diretions in the game"
            case Left
            case Right
            case Top
            case Bottom
        }
        Direction.enumDescription
        
        struct Cat {
            var name: String
            static let maxAge = 20
            static var totalCats = 0
            var age: Int{
                didSet {
                    if age > Cat.maxAge {
                        age = oldValue
                    }
                }
            }
            init(name:String,age:Int) {
                self.name = name
                self.age = age
                Cat.totalCats + 1
            }
        }
        
        let human = Human(name: "Peter", age: 40)
        var cat = Cat(name: "Whiten", age: 10)
        human.age = 1000
        cat.age = 50
        print(Cat.totalCats)
        var cat1 = Cat(name: "Whiten1", age: 10)
        var cat2 = Cat(name: "Whiten2", age: 10)
        print(Cat.totalCats)
        }
}
