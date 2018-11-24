func dictionary() {
    
    test(topic: "Dictionary") {
        
        //дикшинари это ключ - значение, 1 ключ - 1 значение.
        //let dict : [String:String] = ["машина" : "car", "мужик" : "man"]  // - тип ключа - значение - строка.
        //dict["мужик"]
        //let dict2:[Int:String] = [0 : "car", 1 : "man"]
        
        var dict : [String:String] = ["машина" : "car", "мужик" : "man"]
        dict.count
        dict.isEmpty
        
        var dict3 = [String(),String()]
        dict3.count     //кол-во элементов
        dict3.isEmpty   // пустой или нет
        
        dict["комп"] = "computer"    //добавили компутер
        dict.keys.description
        dict.values.description
        
        //dict["комп"] = "mac"      // замена ключа комп на mac
        print(dict)
        dict.updateValue("mac", forKey: "комп")  //-другой способ замена ключа
        
        dict["мужик"] = nil   // убрали ключь мужик
        print(dict)
        }
}
