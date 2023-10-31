// Задание 1. Написать функцию, которая на вход принимает число: сумма, которую пользователь 
//            хочет положить на вклад, следующий аргумент это годовой процент, третий аргумент это срок 
//            Функция возвращает сколько денег получит пользователь по итогу.

func deposit (sum: Double, percent: Double, timeframe: Double) -> Double{
     return  sum * percent * timeframe / 365 //366
}
print(deposit(sum: 1000, percent: 15.0, timeframe: 800))

// Задание 2. Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы.

enum Pizza: String{
    case hawaiian = "Гавайская"
    case pepperoni = "Пеперони"
    case caesar = "Цезарь"
}
var aHawaiian: Pizza = .hawaiian
var aPepperoni: Pizza = .pepperoni
var aCaesar: Pizza = .caesar // || var aCaesar = PizzaType.caesar

// Задание 3. Добавить возможность получения названия пиццы через rawValue

print(aHawaiian.rawValue)
print(aPepperoni.rawValue)
print(aCaesar.rawValue)
