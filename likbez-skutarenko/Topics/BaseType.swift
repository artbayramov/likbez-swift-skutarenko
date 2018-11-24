
func baseType() {
    
    test(topic: "Base Type") {
        
        let number = 255
        let hex    = 0xff
        let binary = 0b11111111
        
        print(Int8.min)
        print(Int8.max)
        print(UInt8.min)
        print(UInt8.max)
        
        /*
         let a = 5
         let b = 5.3
         let c = a + Int(b)
         */
        
        //let c = 6 + 4.5
        
        typealias Artur = Int
        
        let a: Artur = 5
        let b = 5.3
        
        let c = a + Artur(b)
        
        let d = false
        
        if d {
            print("Hey")
        } else {
            print ("Bye")
        }

    }
}
