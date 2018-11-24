
func ARC() {
    
    test(topic: "ARC") {

        //АРС - это очень важная понимать, чтобы понимать.
        var playground = true
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
            var student = Student()
            var teacher = Teacher()
            print("exit playground")
        }
        print ("end")
        
        //Clouser
        var x = 10
        var y = 20
        var clouser: () -> () = {
            [x,y] in
            print("\(x) \(y)")
        }
        var clouser2 : (Int) -> Int = { [x,y] (a:Int) -> Int in
            print("\(x) \(y)")
            return x
        }
        
        clouser2(1)
        x = 30
        y = 40
        clouser2(2)
        }
}
