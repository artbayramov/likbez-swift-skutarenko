import UIKit


func test(topic: String, action: ()->()) {
    print("--------- \(topic) ---------")
    action()
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        basics() //Основы
        baseType() //Базовые типы
        tuples() //Туплы
        optional() //Опцинальный тип
        operation() //Базовые операции
        String() // Работа со строками
        array() // Массивы
        dictionary() // Дикшинари
        methodSwitch() // Свитч
        function() // функции
        clouser() // Замыкания
        Enum() // Энумы
        ClassAndStruct() // Классы и Структуры
        property() // Свойства
        propertyType() // Свойства типов
        Method() // Методы
        Subscript() // Сабскрипт
        intheletis() // Наследование
        inicilazing1() // Инициализация1
        inicilazing2() // Инициализация2
        inicilazing3() // Инициализация3
        ARC() // ARC
        optinalSystem() //Опциональные цепочки
        extensionTest() //Расширение
        bitOperation() // Битовые операции
        protocolTest() // Протоколы
    }


}

