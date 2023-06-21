// 1. Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).
enum Pizza: String{
    case pizza1 = "Margherita"
    case pizza2 = "Carbonara"
    case pizza3 = "Napoletana"
    case pizza4 = "Romana"
    case pizza5 = "Prosciutto"
}

// 2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
struct PizzaStruct{
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
    var name: PizzaType
    var cost: Double
    var thinDough: Bool
    var suplements: PizzaSuplements
}

// 3. Создать класс пиццерии, добавить массив с возможными видами пиццы. Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.
// 4. Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.
class Cafe{
    private var pizza: [PizzaStruct] = []
    init (pizza: [PizzaStruct]){
        self.pizza = pizza
    }
    func addPizza(pizza: PizzaStruct){
        self.pizza.append(pizza)
    }
//    func viewAllPizza(){
//        print(self)
//    }
}


// 5. Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.
let margherita = PizzaStruct(name: PizzaStruct.PizzaType.pizza1, cost: 100, thinDough: true, suplements: .none)
let romana = PizzaStruct(name: .pizza4, cost: 150, thinDough: false, suplements: .supl3)
let napoletana = PizzaStruct(name: .pizza3, cost: 200, thinDough: true, suplements: .none)
var cafe = Cafe(pizza: [margherita, romana, napoletana])

let carbonara = PizzaStruct(name: .pizza2, cost: 300, thinDough: true, suplements: .supl2)
cafe.addPizza(pizza: carbonara)

//cafe.viewAllPizza()


//В рамках прошлого домашнего задания был создан класс пиццерии с переменной, в которой хранится пицца, удалите её. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.
//Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
//Создайте протокол, в котором будут содержаться функции открытия и закрытия.
//Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
//Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.
