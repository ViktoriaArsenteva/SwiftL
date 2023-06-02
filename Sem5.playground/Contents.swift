//В рамках прошлого домашнего задания был создан класс пиццерии с переменной, в которой хранится пицца, удалите её. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.
//Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
//Создайте протокол, в котором будут содержаться функции открытия и закрытия.
//Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
//Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.



struct FrenchFries {
    var cost: Double
    var size: String
    
    enum Size: String {
        case S
        case M
    }
}

struct Pizzas {
    var name: String
    var cost: Double
    var typeOfDough: String
    var add: String
    
    enum Pizza: CaseIterable{
        case margheritta
        case pepperoni
        case carbonara
        case calzine
        case siciliana
        case marinara
    }
    
}
struct position {
    var name: String
}

protocol CloseOpenProtocol {
    func Close()
    func Open ()
}

extension CloseOpenProtocol {
    func Close() {
        print("Close")
    }
    func Open() {
        print("Open")
    }
    
}
class Cafe: CloseOpenProtocol {

    private var menuPosition: [position] = []
    
    init(menuposition: [position]) {
        self.menuPosition = menuposition
    }
        
        func allPizza() {
            for pizza in Pizzas.Pizza.allCases {
                print(pizza)
            }
        }
        
        func addPosition(menuPosition: position) {
            self.menuPosition.append(menuPosition)
        }
        
    }
func sub (num1: Int,num2: Int) -> Int{
    return num1 - num2
}
func sub (num1: Double,num2: Double) -> Double{
    return num1 - num2
}


var cafe = Cafe(menuposition: [position(name: "")])
cafe.Close()
print(sub(num1: 3,num2: 4))
print(sub(num1: 3.5,num2: 2.0))

