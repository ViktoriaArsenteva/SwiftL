//Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками.
//Создать класс столика, в нём должно быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задаётся в инициализаторе.
//Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится кафе, в котором стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра.


struct Emploee {
    var name: String
    var salary: Int
    var position: Positions
    
}

enum Positions: String {
    case cook
    case cashier
}


var e = Emploee(name: "vika", salary: 222, position: .cashier)

class Pizzeria{
    var emploees: [Emploee] = [Emploee(name: "Viktor", salary: 30000, position: .cook),
                               Emploee(name: "Anna", salary: 20500, position: .cook),
                               Emploee(name: "Roman", salary: 21000, position: .cook),
                               Emploee(name: "Svetlana", salary: 25000, position: .cook),
                               Emploee(name: "Viktoria", salary: 30000, position: .cook),
                               Emploee(name: "Sergey", salary: 36000, position: .cashier),
                               Emploee(name: "Mark", salary: 20000, position: .cashier),
                               Emploee(name: "Anton", salary: 45000, position: .cashier),
                               Emploee(name: "Matvey", salary: 50000, position: .cashier)]
    
    var tables: [Table] = [Table(amount: 2),
                           Table(amount: 2),
                           Table(amount: 2),
                           Table(amount: 3),
                           Table(amount: 3),
                           Table(amount: 4),
                           Table(amount: 5),
                           Table(amount: 5),
                           Table(amount: 6),
                           Table(amount: 6)]
    
}

class Table {
    var amount: Int
    var cafe: String = "Pizzeria"
    
    func GetPlace (guests: Int) -> Bool{
        if (amount >= guests){
            return true
        }
        else {
            return false
        }
    }
    
    init(amount: Int) {
        self.amount = amount
    }
}

var cafe1 = Pizzeria()
cafe1.tables[8].GetPlace(guests: 6)
