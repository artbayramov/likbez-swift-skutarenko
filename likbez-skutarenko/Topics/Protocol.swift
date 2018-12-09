
protocol EntryName {
    var label: String { get }         //любой тип должен иметь гет или сет
}
    
func protocolTest() {
    test(topic: "Protocol") {
        //Протоколы - это (супер важная тема) они для того что бы обеспечить общения разных обьъктов интерфейса.
       
        
        class Student : EntryName {
            
            var firstName: String = ""
            var lastName: String = ""                       //computer Property
            var fullName: String {
                return firstName + "" + lastName
            }
            init(firstName: String, lastName: String) {   //constructor
                self.firstName = firstName
                self.lastName = lastName
            }
            var label: String {
                return fullName
            }
            
            class Animal {
                
            }
            
            class Cow : Animal, EntryName {
                var name: String?
                var label: String {
                    return name ?? "a cow"
                }
            }
            
            struct Grass : EntryName {
                var type: String
                var label: String {
                    return "Grass: " + type
                }
            }
            
            let student1 = Student(firstName: "Bob", lastName: "Shmob")
            let student2 = Student(firstName: "Bill", lastName: "Shmill")
            let student3 = Student(firstName: "Brian", lastName: "Shmian")
            
            let cow1 = Cow()
            let cow2 = Cow()
            
            
            let grass1 = Grass(type: "Bermuda")
            let grass2 = Grass(type: "St.Augustine")
            
            /*
             for value in array {
             if let grass = value as? Grass {     // as? - оператор если я смогу превести велую к грасс
             print(grass.type)
             } else if let student = value as? Student {
             print(student.fullName)
             } else if let cow = value as? Cow {
             print(cow.name ?? "a cow")
             }
             }
             */
            
            func printFarm(array: [EntryName]) {
                for value in array {
                    print(value.label)
                }
            }
       }
    }
}
