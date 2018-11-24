

func ClassAndStruct() {
    
    test(topic: "Base Type") {

        //Классы и структуры - это фундаментальная тема!!!
        //Классы применяются для создание объетов или структур, это конструктор который объединяет свойства объектa
        /*
         let student1 = (name: "Alex", age: 20)
         let student2 = (name: "Bod", age: 22)
         
         student1.name
         student2.name
         
         let student3 = (nam:"Sam", ag: 23)
         student3.nam
         */
        class StudentClass {     //создается конструктор
            var name : String
            var age : Int
            init() {
                name = "No Name"
                age = 20
            }
            init(name:String, age:Int) {
                self.name = name               //self._ указывает на текущий экземпляр
                self.age = age                  //property - параметры
            }
        }                                  //создали 2 init конструктыра пустой и параметризированный
        
        struct StudentStruct { // для структуры свифт созд конструк по умолчанию
            var name : String
            var age: Int
        }
        
        let stClass1 = StudentClass(name: "Bob", age: 18)
        stClass1.name = "Alex"
        stClass1.age = 21
        
        let stStruct1 = StudentStruct(name: "Sam", age: 24)
        
        stStruct1
        var stStruct2 = stStruct1
        stStruct2.age = 25
        stStruct2.name = "SAV"
        stStruct1     // происходит процесс копирования
        print(stStruct2)   //экземпляр стурктуры который сохранил свои значения, но в классах все наоборот
        
        
        var stClass2 = stClass1
        stClass2.age = 20
        stClass2.name = "AAA"
        stClass1                //сдезь мы не копируем объект, а создаем указател
        
        var arrayStructs = [stStruct1]
        print(arrayStructs[0])
        arrayStructs[0].age = 50
        print(arrayStructs)
        }
}
