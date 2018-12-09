func optional() {
    
    test(topic: "Optional") {
        
        class Tree {
            var vetka: Vetka? = Vetka() //создал объект класса Vetka
            var bananas: Int? = 150
        }
        
        class Vetka {
            var bananas: Int? = 10
        }
        
        let tree = Tree()
        
        print(tree.bananas as Any)
        
        //1. способ - force unwrap (силовое развертывание)
        print(tree.bananas!)
        
        //2. nil coalescing operator - оператор ??
        print(tree.bananas ?? 0)
        
        //3. if let unwrapping - разворачивание
        
        if tree.bananas != nil {
            print(tree.bananas ?? 0)
        }
        
        if let bananas = tree.bananas {
            print(bananas)
        }
        
        //4. guard let - оператор разворачивания + ранний выход
        
        //tree.bananas = nil
        guard let bananas = tree.bananas else {
            return //завершение scope (функция, метод или кложур)
        }
        print(bananas)
        
        //5. опциональная цепочка
        print(tree.vetka?.bananas as Any)
        
        
        
        //Опциональный тип - фундаментальный метод, его нужно четко понимать.
        // nil - это ссылка на несуществующий объект.
        
        var apples: Int? = 5   // опциональные тип интеджер
        apples = nil
        
        if apples == nil {         // проверка на "нил"
            print ("nil apples")
        } else {
            //print (apples)         //распечетал не интеджер а "интеджер?"
            let _ = apples! + 2       //метод "анрепен" - разворачивание, т.е. переводим "опциональный интеджер" в "интеджер" т.е. ставиться знак "!"
        }
        //"форст-анрепен" - вынужденное преобразование "!", но нужно всегда проверять на нил перед "форст-анрепен"
        
        
        //"опшинал-байдинг" - связыванеие опционала
        if var number = apples {     //создаю переменную и присваиваю значение опциональное
            number = number +  2       //если аплес не нил
        } else {                     //если аплес-нил
            print("nil apples")
        }
        //Int - тип интеджер
        //Int? - тип опшинал интеджер
        //Int! - инплисибланреп опшиналс - неявно развернутый опшинал
        var apples2 : Int! = nil
        apples2 = 2
        assert(apples2 != nil, "oh no!!!")  // проверка на нил, использ для дебага
        apples2 = apples2  + 5
        
}
}
