extension UInt8 {
    func binary() -> String {
        var results = ""
        for i in 0..<8 {
            let mask = 1 << i      // << - это оператор сдвиг-шивт
            let set = Int(self) & mask != 0
            results = (set ? "1" : "0") + results
        }
        return results
    }
}







func bitOperation() {
    
    test(topic: "Bit Operation") {

        // Битовые операции - это операции которые проводятся над битами с использованием операторов.  1 байте = 8 бит
        

        /*
         var a: UInt8 = 57    // UInt8 -  by him: min int=0 max int = 255
         a = 0b00111001
         (5 as UInt8).binary()
         
         a = a + 0b00000101
         a.binary()
         
         (4 as UInt8).binary()
         a = a - 0b0000100
         a.binary()
         a = a << 1
         a.binary() //все битики сдвинулись на один
         a = 0b1111
         a = 0b11111
         a = 0b111111
         a = 0b1111111
         a = 0b11111111
         */
        
        //Битовые маски - это использование нужные битовые значения т.е. как то упрощает код
        
        let a: UInt8 = 0b00110011
        var b: UInt8 = 0b11100001
        
        print(a.binary())
        print(b.binary())
        print((a | b).binary())  // типа битовое сложение
        
        print(a.binary())
        print(a.binary())
        print((a & b).binary())  // *
        
        print(a.binary())
        print(a.binary())
        print((a ^ b).binary())  // -
        
        b = 0b00001000
        print(a.binary())
        print(b.binary())
        print((a & b).binary())
        
        b = 0b00010000
        print(a.binary())
        print((~b).binary())  // this ~b - invertions bit
        print((a & ~b).binary())
        
        
        enum CkeckList: UInt8 {
            case Bread =   0b0000001
            case Chicken = 0b0000010
            case Apples =  0b0000100
            case Pears =   0b0001000
        }
        let ckeckList: UInt8 = 0b00001001
        let bread = ckeckList & CkeckList.Bread.rawValue
        print(bread.binary())
        
        let chicken = ckeckList & CkeckList.Chicken.rawValue
        print(chicken.binary())
    }
}

