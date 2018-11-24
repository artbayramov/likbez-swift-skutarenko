
func Subscript() {
    
    test(topic: "Base Type") {

        //Subckribts
        //Сабскрипт это обращение нашаего экземеплря к массивчику  по индексу
        let array = ["a","b","c"]
        array [0]
        array [1]
        array [2]
        struct Family {
            var father = "Father"
            var mother = "Mohter"
            var kids = ["Kid1","Kid2","Kid3"]   //3 story propertis
            var count : Int {
                return 2 + kids.count
            }
            subscript (index: Int) -> String? {
                get {
                    switch(index) {
                    case 0: return father
                    case 1: return mother
                    case 2..<(2 + kids.count): return kids[index - 2]
                    default: return nil
                    }
                }
            }
        }
        var family = Family()
        print(family.father)
        print(family.mother)
        family.count
        family[0]
        family[1]
        family[2]
        
        /*struct Field {
         subscript (column: String, row: Int) -> String? {
         get
         }
         }
         */
   }
}
