
func optinalSystem() {
    
    test(topic: "Optinal System") {
        
        //Опциональные цепочки
        class Address {
            var street = "Deribasovskay"
            var number = "1"
            var city = "Odessa"
            var country = "Ukraine"
        }
        struct Garage {
            var size = 2
        }
        class House {
            var rooms = 1
            var address = Address()
            var garage: Garage? = Garage()
        }
        
        class Car {
            var model = "Zaporojec"
            func start()  {
            }
        }
        class Person {
            var cars: [Car]? = [Car()]
            var house: House? = House()
        }
        let p = Person()
        if let house = p.house {
            if house.garage != nil{
            }
        }
   }
}
