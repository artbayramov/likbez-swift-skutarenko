func dictionary() {
    
    test(topic: "Dictionary") {
        
        //дикшинари это ключ - значение, 1 ключ - 1 значение.
        //let dict : [String:String] = ["машина" : "car", "мужик" : "man"]  // - тип ключа - значение - строка.
        //dict["мужик"]
        //let dict2:[Int:String] = [0 : "car", 1 : "man"]
        
        var dict : [String:String] = ["машина" : "car", "мужик" : "man"]
        print(dict.count)
        print(dict.isEmpty)
        
        let dict3 = [String(),String()]
        print(dict3.count)     //кол-во элементов
        print(dict3.isEmpty)   // пустой или нет
        
        dict["комп"] = "computer"    //добавили компутер
        print(dict.keys.description)
        print(dict.values.description)
        
        //dict["комп"] = "mac"      // замена ключа комп на mac
        print(dict)
        dict.updateValue("mac", forKey: "комп")  //-другой способ замена ключа
        
        dict["мужик"] = nil   // убрали ключь мужик
        print(dict)
        }
}
