// Урок 5. Протоколы, классы и расширения

// 1.   В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите ее.
//      Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так,
//      чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.

protocol MixProtocol {
  var prise: Int {get}
  var size: Int {get}
}

struct potatoFree: MixProtocol {
       var prise: Int 
       var size: Int
}

struct pizza: MixProtocol {
  var prise: Int 
  var size: Int 
}

class PizzeriaClass {
  var mix : [MixProtocol] = []
  init(mix: [MixProtocol]){
    self.mix = mix 
  }
    func addMix(element : MixProtocol){
      mix.append(element)
  }
}
var exPot = PotatoFree(price: 100, size: 6)
var exPiz = Pizza(price: 400, size: 30)
var pizCl = PizzeriaClass(mix: [])
pizCl.addMix(element: exPot)
pizCl.addMix(element: exPiz)
print(pizCl.mix)

// 2.    Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.

func addMix(element : MixProtocol){
  mix.append(element)
  
// 3.    Создайте протокол, в котором будут содержаться функции открытия и закрытия.
protocol OpenCancel {
  func openI()
  func cancel()
}
  
// 4.    Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
extension PizzeriaClass: OpenCancel {
  func openI(){}
  func cancel(){}
}
// 5.    Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, 
// и     с Double.Функция должна возвращать результат вычитания.

  func minus<T: Numeric>( a: T, b: T) -> T {
    a  - b 
  }
  
