
func inicilazing2() {
    
    test(topic: "Inicilazing2") {

        class Human {
            var weight: Int = 0
            var age: Int = 0
            init(weight: Int, age: Int) {   //disigneted app value
                self.weight = weight
                self.age = age
            }
            convenience init(age:Int) {  //convenience add default value
                self.init(weight: 0, age: age)
            }
            convenience init (weight: Int) {
                self.init(weight: weight, age: 0)
            }
            convenience init() {
                self.init(weight: 0)
            }
            func test()  {}
        }
        
        class Student: Human {
            var firsName: String = ""
            var lastName: String = ""//2 Story property
            init(firstName:String, lastName:String) {
                self.firsName = firstName
                self.lastName = lastName
                super.init(weight: 0, age: 0)
                self.weight = 50
            }
            
            convenience init(firstName:String) {
                self.init(firstName: firstName, lastName: "")
                self.age = 28
                test()
            }
        }
        
        class Doctor: Student {
            var fieldOfStudy: String = ""
            init(feildOfStudy:String) {
                super.init(firstName: "Doctor", lastName: "House")
            }
        }
       // let d1 = Doctor (feildOfStudy: "aaaa")
       // let d2 = Doctor (feildOfStudy:  "" )
        }
}
