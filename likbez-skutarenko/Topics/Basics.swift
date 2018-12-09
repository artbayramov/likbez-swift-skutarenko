
func basics() {
    
/*

     let - неизменяемая переменная
     var - изменяемая переманная
 
     каждая переманная должна быть инициализирована
 
*/
    
    test(topic: "Basics") {
   
        let name = "Artur"
        let family = "Bayramov" //фамилия
        var studentName = ""
        studentName = name
        var studentFamily = ""
        studentFamily = family
        print(name)
        print(family)
        print(studentName)
        print(studentFamily)
        
        print("student this \(name)" )
        print("student this\(family)")
        let age: Int = 27
        let height: Int = 80 //высота
        let ageAndHeight = age + height //конкатенация
        print(ageAndHeight)

    }

}
