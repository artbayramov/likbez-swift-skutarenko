

/*
    Туплы - группа значение объединенных в одну перемменную
 
*/

func tuples() {
    
    test(topic: "Tuples") {
        
        let a : (Int, String, Bool, Double) = (1, "Hello", true, 2.4)
        let (number, greatings, ckeck, decimal) = a
        
        print(number)
        print(greatings)
        print(ckeck)
        print(decimal)
        
        print(a.0)
        print(a.1)
        
        var tuple = (index:1, phrase: "Hello", registred: true, latency: 2.4)
        print(tuple.0)
        print(tuple.index)
        print(tuple.phrase) //вытаскивается значение
        
        // change tuple's value
        tuple.index = 2
        
        let (redColor, greenColor, blueColor) = ("red", "green", "blue")
        
        print(redColor)
        print(blueColor + greenColor)
        
        let totalNumber = 5
        let Name = "Artur"
        print("\(totalNumber) \(Name)")
        print((totalNumber, Name))
        print (a)
    }
}
