//1. В рамках прошлого домашнего задания был создан класс пиццерии с переменной, в которой хранится пицца, удалите её. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.

//2. Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.

protocol MenuProtocol {
    var name: String { get }
    var cost: Double { get }
}

class Cafe{
    fileprivate var menu: [MenuProtocol]
    
    init (menu: [MenuProtocol]){
        self.menu = menu
    }
    func add(_ new: MenuProtocol){
        menu.append(new)
    }
    func get() -> [MenuProtocol] {
        menu
    }
}

struct Free: MenuProtocol{
    var name: String
    var cost: Double
    var bigSize: Bool
}

struct Pizza: MenuProtocol{
    enum PizzaType: String{
        case pizza1 = "Margherita"
        case pizza2 = "Carbonara"
        case pizza3 = "Napoletana"
        case pizza4 = "Romana"
        case pizza5 = "Prosciutto"
    }
    enum PizzaSuplements: String{
        case supl1 = "Peperroni"
        case supl2 = "Tomato"
        case supl3 = "Cheese"
        case none
    }
    var name: String { type.rawValue }
    var type: PizzaType
    var cost: Double
    var thinDough: Bool
    var suplements: [PizzaSuplements]
}

let pottato1 = Free(name: "Standart", cost: 130, bigSize: false)
let pizza1 = Pizza(type: .pizza1, cost: 150, thinDough: true, suplements: [.supl1, .supl2])

var cafe = Cafe(menu: [pottato1, pizza1])

let pizza2 = Pizza(type: .pizza2, cost: 350, thinDough: true, suplements: [.none])
cafe.add(pizza2)

print(cafe.get())


//3. Создайте протокол, в котором будут содержаться функции открытия и закрытия.

protocol CloseOpenProtocol{
    func open()
    func close()
}

//4. Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
extension Cafe: CloseOpenProtocol {
    func open() {
        print("Open")
    }
    func close() {
        print("Close")
    }
}

//5. Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.
func sub(a: Double, b: Double) -> Double{
    a - b
}
print(sub(a: 10, b: 5))
