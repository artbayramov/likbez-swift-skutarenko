
func ARC() {
    
    test(topic: "ARC") {

        //АРС - это очень важная понимать, чтобы понимать.
        let playground = true
        class Student {
            deinit {
                print ("goodbye student")
            }
        }
        class Teacher {
            deinit {
                print("goodbye teacher")
            }
        }
        if playground {
            _ = Student()
            _ = Teacher()
            print("exit playground")
        }
        print ("end")
        
        //Clouser
        var x = 10
        var y = 20
        var _: () -> () = {
            [x,y] in
            print("\(x) \(y)")
        }
        let clouser2 : (Int) -> Int = { [x,y] (a:Int) -> Int in
            print("\(x) \(y)")
            return x
        }
        
        print(clouser2(1))
        x = 30
        y = 40
        print(clouser2(2))
    }
}
