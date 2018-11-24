func array() {
    
    test(topic: "Array") {

        let constArray = ["a","b","c","d"]
        constArray.count
        
        var array = [""]
        array += constArray
        array.append("f")
        
        var array2 = array
        array2[0] = "1"
        
        let money = [100, 1, 5, 20, 1, 50 , 1 , 1 , 20]
        money.count
        
        array.remove(at: 3)
        let dayArray = [1, 2, 4, 5, 6, 7, 8, 9, 10, 11, ]
        dayArray.count
        
        let namesArray = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        var nameIndex = 0
        for g in dayArray {
            print("\(namesArray[nameIndex]) - \(g)")
            nameIndex = nameIndex + 1
        }
}
}
