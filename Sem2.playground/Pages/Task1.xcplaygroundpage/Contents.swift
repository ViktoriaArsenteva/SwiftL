//Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент это годовой  процент, третий аргумент это срок Функция возвращает сколько денег получит пользователь по итогу

func BankDepositCalculation (_ depositAmount: Double, _ annualInterst: Double, _ time: Int){
    var profit: Double = 0
    let percent: Double = annualInterst / 100
    for _ in 1...time {
        profit += (depositAmount + profit) * (percent) / 365 * 30
    }
    var amount = Int(depositAmount + profit)
    print(amount)
}
var depositAmount: Double = 30000 //стартовая сумма вклада
var annualInterest: Double = 10 //проценты по вкладу
var time: Int = 12 //срок вклада в месяцах
BankDepositCalculation(depositAmount, annualInterest, time)
