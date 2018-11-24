
func operation() {
    
    test(topic: "Operation") {

        let total = 5 + 6 - 8 * 3 - 5/10
        let rest = 10 % 3
        var small: UInt8 = 0xff
        //small = small + 5
        small = 0b0000000011111111
        let str = "Hi," + " Artur"
        print (str)
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
        var c = ( a > b ) ? a : b
        var sum = 5
        sum = sum + 1
        sum += 1
        
        var good = true
        good = !good
        //&& = *, || = +
        if good {
            print ("good")
        } else {
            print ("bad")
        }
        //true && true = true
        //true && false = false
        0...5
        0..<5
        for i in 0...5 {
            print("\(i)")
       }
   }
}
