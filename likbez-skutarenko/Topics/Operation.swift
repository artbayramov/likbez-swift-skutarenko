
func operation() {

    let good = true
    
    test(topic: "Operation") {

        let total = 5 + 6 - 8 * 3 - 5/10
        let rest = 10 % 3
        var small: UInt8 = 0xff
        print(small)
        //small = small + 5
        small = 0b0000000011111111
        let str = "Hi," + " Artur"
        print (str + "\(total)" + "\(rest)") //экранирование
        let a = 5
        let b = 6
        //>, <, >=, <=, ==, !=
        /*
         if (a == b) {
         print ("artur")
         } else {
         print ("arturchik")
         }
         */
        let c = ( a > b ) ? a : b
        print(c)
        var sum = 5
        sum = sum + 1
        sum += 1
        
       
        //good = !good
        //&& = *, || = +
        if good {
            print ("good")
        } else {
            print ("bad")
        }
        //true && true = true
        //true && false = false

        for i in 0...5 {
            print("\(i)")
       }
   }
}
