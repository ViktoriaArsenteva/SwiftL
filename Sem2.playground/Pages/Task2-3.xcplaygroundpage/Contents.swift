//Создать перечисление, которое содержит 3 вида пиццы и создать  переменные с каждым видом пиццы.
//Добавить возможность получения названия пиццы через rawValue.

enum Pizza: String {
    case Margheritta = "Пицца Маргарита"
    case Pepperoni = "Пицца Пепперони"
    case Carbonara = "Пицца Карбонара"
}
var margheritta = Pizza.Margheritta
var pepperoni = Pizza.Pepperoni
var carbonara = Pizza.Carbonara

func getName(pizza: Pizza) -> String {
    pizza.rawValue
}
print(getName(pizza: pepperoni))
