
func inicilazing1() {
    
    test(topic: "Inicilazing1") {

        //Инициализатор - это инициализация то есть, цель установить каждое свойство в какое-то значение
        class Student1 {
            var firstName: String = ""
            var lastName: String = ""
            var fullName: String {
                return firstName + "" + lastName
            }
            init() {
                self.firstName = ""
                self.lastName = ""
            }
        }
        
        class Student2 {
            var firstName: String = ""
            var lastName: String = ""
        }
        
        class Student3{
            var firstName: String = ""
            var lastName: String = ""
            init(firstName: String, lastName: String) {
                self.firstName = firstName
                self.lastName = lastName
            }
        }
        
        class  Student4 {
            var middleName: String?
        }
        
        class Student5 {
            let maxAge: Int
            init() {
                maxAge = 100
            }
        }
        
        let s1 = Student1()
        let s2 = Student2()
        let s3 = Student3(firstName: "a", lastName: "b")
        let s5 = Student5()
        
        //дезикнем методы - главные инициализаторы,
        // конвинекс методы - модет ставить деволтные значения
        
        class Human {
            var weight: Int = 0
            var age: Int = 0
            init(weight: Int, age: Int) {
                self.weight = weight
                self.age = age           // это дезикнейтет
            }
            convenience init(age:Int) {
                self.init(weight: 0, age: age)
            }
            convenience init(weight:Int){
                self.init(weight: weight, age: 0)
            }
            convenience init() {
                self.init(weight: 0)
            }
        }
        //init -  это десигнейт инициализатор
        let h1 = Human(weight: 70, age: 25)
        let h2 = Human(age: 25)
        let h4 = Human()
        
        class Student: Human {
            var firstName : String
            var lastName: String
            init(firstName:String, lastName:String) {
                self.firstName = firstName
                self.lastName = lastName
                super.init(weight: 0, age: 0)
            }
        }
    }
}
