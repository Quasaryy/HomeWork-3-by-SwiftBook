import Foundation

/*:
 ### Задание 6
 6.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление* (если не знаете английские наименования — [translate.google.com](http://translate.google.com))
 */

enum CalculationType {
    case addition
    case subtraction
    case multiplication
    case division
}
/*: 6.2 Создайте три константы: число один, число два и тип математической операции(CalculationType).

 В зависимости от значения переменной типа `CalculationType` выполните соответствующую математическую операцию с константами и выведите(print) результат. Для перебора всех возможных результатов используйте конструкцию `switch`. Пример вывода программы: "Результат сложения 6 и 8 равен 14"

 6.3 Создайте перечисление `CurrencyUnit` со следующими членами: `rouble`, `dollar`, `euro`.

 6.4 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountries`, в котором содержится перчень стран, национальной валютой которых является доллар (USA, Canada, Australia)

 6.5 Добавьте в кейс `dollar` ассоциативное значение DollarCountries.

 6.6 Создайте константу типа CurrencyUnit, задайте ей значение доллара Канады.
 */
// 6.2
let numberOne = 43
let numberTwo = 6

let calculation = CalculationType.subtraction

switch calculation {
case .addition:
    print("Результат сложения \(numberOne) и \(numberTwo) равен \(numberOne + numberTwo)")
case .subtraction:
    print("Результат вычетания \(numberOne) и \(numberTwo) равен \(numberOne - numberTwo)")
case .multiplication:
    print("Результат умножения \(numberOne) и \(numberTwo) равен \(numberOne * numberTwo)")
case .division:
    print("Результат деления \(numberOne) и \(numberTwo) равен \(numberOne / numberTwo)")
}


// 6.3
enum CurrencyUnit {
    case rouble, dollar(DollarCountries), euro
    
    enum DollarCountries {
        case USA, Canada, Australia
    }
}

// 6.5
let currencyUnit = CurrencyUnit.dollar(CurrencyUnit.DollarCountries.Canada)
//: [Ранее: Задание 5](@previous)  |  задание 6 из 6  |

