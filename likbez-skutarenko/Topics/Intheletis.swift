

func intheletis() {
    
    test(topic: "Intheletis") {

        //Наследование примен тока классы
        //Базовый класс  - это класс от которого нечего не наследуется
        class Human {
            var firstName: String = ""
            var lastName: String = ""
            var fullName: String {
                return firstName + " " + lastName
            }
            func sayHello() -> String {
                return "Hello"
            }
        }
        let human = Human()
        human.firstName = "Alex"
        human.lastName = "Skutarenko"
        print(human.sayHello())
        
        class Student : Human {   // наследует от класса хьюман
            override func sayHello() -> String {
                return super.sayHello() + " my friend " // используется супер класс от родительского класса
            }
        }
        let student = Student()
        student.firstName = "Max"
        student.lastName = "Mix"
        print(student.sayHello())
        
        class Kid: Human {
            override func sayHello() -> String {
                return "agu"
            }
        }
        let kid = Kid()
        kid.firstName = "Artur"
        print(kid.sayHello())
        //Наследование очень важная штука!!!
        }
}
