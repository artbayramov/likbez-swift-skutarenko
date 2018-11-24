import Foundation

func property() {
    
    test(topic: "Propertis") {
        //Prportis
        //Stored Properties
        //Computer Properties
        
        struct Student {
            var firstName: String{     //properties
                willSet(newFirstName) {
                    print ("will set" + newFirstName + "instead of" + firstName)
                }
                didSet(oldFirstName) {
                    print("did set" + firstName + "instead of" + oldFirstName)
                    firstName = firstName.capitalized
                }
            }
            var lastName: String { //properties
                didSet {
                    lastName = lastName.capitalized
                }
            }
            var fullName: String {
                get {
                    return firstName + " " + lastName
                }
                set {
                    print("fullName wants to be set to" + newValue)
                    
                    let words = newValue.components(separatedBy: " ")
                    
                    if words.count > 0 {
                        firstName = words[0]
                    }
                    if words.count < 0 {
                        lastName = words[1]
                    }
                }
            }//propeties
        }
        var student = Student(firstName: "Alex", lastName: "Skutarenko")
        print(student.firstName)
        print(student.lastName)
        print(student.fullName)
        
        student.firstName = "Bob"
        
        print(student.firstName)
        print(student.lastName)
        print(student.fullName)
        
        
        student.fullName = "Ivan Ivanov"
        }
}
