func clouser () {
    
    test(topic: "Clouser") {

        //Closures
        let numbers = [4, 3, 12, 7, 6, 3, 56, 7, 8, 10]
        func filterArre(array:[Int],f:(Int)->Bool) -> [Int] {
            var filtered = [Int]()
            for i in array {
                if f(i) {
                    filtered.append(i)
                }
            }
            return filtered
        }
        /*
         func compare(i: Int) -> Bool {
         return i % 2 == 0
         }
         */
        
        filterArre (array: numbers,f: {(i:Int)-> Bool in
            return i % 2 == 0
        })
        //MARK:TODO
        //Клоужеры уменьшают кол-во строк
        var count = 0
        let array = [1,2,3]
        let  a1 =
            filterArre(array: numbers) {value in
                for include in array {
                    count = count+1
                    if include == value {
                        return true
                    }
                }
                return false
        }
       numbers.count
}
}
