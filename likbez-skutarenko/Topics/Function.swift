func function() {
    test(topic: "Function") {
        
        //Фунция - это очень важная тема!!!! Иcпользовать нужна функ если нужно дублировать код.
        
        func calculateMoney(  wallet: inout [Int], type: Int? = nil) -> (total:Int,count:Int) {       //() - параметры функции  -> возвращаеt (Int, Int) - typels
            var sum = 0
            var count = 0
            for value in wallet {
                
                if (type == nil) ||
                    (type != nil ) {
                    sum += value
                    count = count + 1
                }
                
            }
            return (sum, count)
        }
        //Функция может принимать несколько параметров
        
        func calculateMoney(inSequence range: Int...) -> Int {
            var sum = 0
            for value in range {
                sum += value
            }
            return sum
        }
        print(calculateMoney(inSequence : 5,5,10,2,3,4,4,23,24,34))
        
        var wallet = [100,5, 1, 5, 5, 20, 50, 100, 1, 1,]
        let (money, count) = calculateMoney (wallet: &wallet, type: 1)
        print(money)
        print(count)
        print(calculateMoney(wallet: &wallet, type: 5))
        
        func sayHi() -> () {
            print ("Hi")
        }
        sayHi()
        let hi: () -> () = sayHi
        
        func sayPhrase (phrase:String ) -> Int? {
            print(phrase)
            return nil
        }
        print(sayPhrase(phrase: "aaa") as Any)
        let phrase: (String) -> (Int?) = sayPhrase
        print(phrase("bbb") as Any)
        
        func doSomething(whatToDo:@escaping ()->()) {
            
        }
        doSomething(whatToDo: hi)
        }
}
