
import Foundation

func String() {
    
    test(topic: "String") {

        var str = "c"
        str = str + "a"
        str += "b"
        /*
         var a = 5
         var b = a
         b
         */
        var str1 = "a"
        var str2 = "bm"
        str1 = "fuck"
        print(str1)
        print(str2)
        print(str1.isEmpty)
        
        
        let char1: Character = "w"
        for c in "Hello World!" {
            print (c)
        }
        
        
        str2.append(char1)
        print((str2 as NSString).length)
        //unicod
        let heart = "\u{1F496}"
        let fun: Character = "Ъ"
        
        print("\(heart)", "\(fun)")
        }
}
