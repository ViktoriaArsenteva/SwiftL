//Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать). Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал и стоимость).

var teaPrice: [String: Int] = ["blackTea": 200, "greenTea": 250, "whiteTea": 300, "oolong": 280, "flavoredTea": 320, "earlGrey": 230]

var queue: [String] = ["flavoredTea", "greenTea", "greenTea", "whiteTea", "oolong","earlGrey"]
for num in 0 ..< queue.count {
    var teaName = queue[num]
    print(num + 1, "заказ:", teaName, "(", teaPrice[teaName] ?? 0, "рублей)")
    
}
