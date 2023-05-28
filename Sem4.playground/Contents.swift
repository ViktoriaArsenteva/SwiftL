//Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).
// Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
//Создать класс пиццерии, добавить массив с возможными видами пиццы. Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.
//Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.
//Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.


enum addiive: String {
    case pepperoni = "Пепперони"
    case cheese = "Сыр"
    case tomato = "Помидор"
    case chicken = "Курица"
    case onion = "Лук"
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

class Pizzeria {
    
    private var pizzaList: [Pizzas.Pizza]
    
    func allPizza() {
        for pizza in Pizzas.Pizza.allCases {
            print(pizza)
        }
    }
    
    func addPizza(pizza: Pizzas.Pizza) {
            self.pizzaList.append(pizza)
    }
    
    init(pizzaList: [Pizzas.Pizza]){
        self.pizzaList = pizzaList
    }
    
}

var pizzeria = Pizzeria(pizzaList: [])
pizzeria.allPizza()



