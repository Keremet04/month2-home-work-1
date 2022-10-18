
// ООП - Объектно-ориентированное программирование

// создать класс кошкаб кличка возраст и имя хозяина
//
//class Cat{
//    var name: String = ""
//    var age: Int = 0
//    var parentName: String = ""
//    var n: String = ""
//
//    init(name: String, parentName: String, age: Int){
//
//
//        if name == n {
//            self.name = "there is no any cat's parent"
//        }else{
//            self.name = name
//        }
//        self.age = age
//        self.parentName =  parentName
//    }
//
////    init(){
////
////    }
//
//
//    func showInfo(){
//        print("\(name) - \(age) - \(parentName)")
//    }
//}
//
////var cat1 = Cat()
//
//var cat2 = Cat(name: "Anna", parentName: "Anton", age: 2 )
//var cat3 = Cat(name: "April", parentName: "Alex", age: 1 )
//var cat4 = Cat(name: "", parentName: "Dima", age: 4 )
//var cat5 = Cat(name: "867", parentName: "Keri", age: 7)
//
//
//
//
//cat2.showInfo()
//cat3.showInfo()
//cat4.showInfo()
//cat5.showInfo()
//



//1. Создать класс "Машина"(Car) и задать ему свойства
//Создать функцию, которая будет увеличивать мощность авто(тюнинг по всем параметрам)


class  Car{
    var name: String = ""
    var power: Int = 0
    var speed: Int = 0
    var enginevolume: Int = 0

    init(name: String, power: Int, speed: Int, enginevolume: Int){


        self.name = name
//        if power <= 130{
//            print("imroved power is - ", power + 100)
//        }
        self.power = power

//        if speed <= 220{
//            print("max speed is - ", speed + 80)
//        }
        self.speed = speed

//        if enginevolume <= 1600{
//            print("max enginevolume is - ", enginevolume + 400)
//        }
        self.enginevolume = enginevolume
    }
//    init(){
//
//    }
    func showInformation(){
        power += 70
        speed += 50
        enginevolume += 100
        print("\(name) - \(power) мощность  - \(speed) скорость - \(enginevolume)")

    }
}

var car = Car(name: "Bmw", power: 130, speed: 220, enginevolume: 1600)


car.showInformation()
car.showInformation()
car.showInformation()



//2. Создать класс "Магазин" и "Продукт" и задать им свойства
//Также создать функцию добавления продукта в магазин и отображения товаров в магазине

class Product{
    var name: String = ""
    var date: String = ""
    var company: String = ""
    
    init(name: String, date: String, company: String){
        self.name = name
        self.date = date
        self.company = company
}

    func showInfo2(){
        print("\(name) - \(date) - \(company)")
    }
}

var product = Product(name: "Milk", date: "22.10.2022", company: "Umut")
var product2 = Product(name: "Butter", date: "10.10.2022", company: "Umut")
var product3 = Product(name: "Ice cream", date: "21.10.2022", company: "Umut")
product.showInfo2()
product2.showInfo2()
product3.showInfo2()



class Shop{
    var name1: String = ""
    var address: String = ""
    var staff: Int = 0
    var productstoshop: [Product] = []
    
    init(name1: String, address: String, staff: Int){
        self.name1 = name1
        self.address = address
        self.staff = staff
    
}
    func addproducts(){
        productstoshop.append(product)
        productstoshop.append(product2)
        productstoshop.append(product3)
        print("\(name1) - \(address) - \(productstoshop)")
        dump(productstoshop)
    }
}
var shop1 = Shop (name1: "Frunze", address: "4 microdistrict", staff: 25)
shop1.addproducts()


//Создать класс "Банк" и "Клиент"
//создать функции для:
//1) Подсчета клиентов банка
//2) Отображения баланса по ID или фамилии клиента
//3) Перевода средств от клиента к другому клиенту
//


class Client{
    var name: String = ""
    var id: String =  ""
    var balance: Int = 0
    var account: String = ""
    
    init(name: String, id: String, balance: Int, account: String){
        self.name = name
        self.id = id
        self.balance = balance
        self.account = account
    }
}
    var client1 = Client(name: "Almaz", id: "aaaa", balance: 1000, account: "almaz2004")
    var client2 = Client(name: "Anna", id: "nnnn", balance: 3400, account: "anna34")


class Bank{
    var name: String = ""
    var numberofclients: Int = 0
    var clientsinfo: [Client] = []
    
    
    init(name: String, numberofclients: Int){
        
        self.name = name
        self.numberofclients = numberofclients
        
    }
    
    func countclients (){
        clientsinfo.append(client1)
        clientsinfo.append(client2)
        
        dump(clientsinfo)
        for i in clientsinfo {
            numberofclients += 1
            print("Number of clients: \(numberofclients)")
        }
    }
    
    func balanceOfCustomers () {
            if client1.id == "aaaa" || client1.name == "Almaz" {
                print ("Баланс счета клиента Steven Paul Jobs: \(client1.balance) долларов США")
            }
            if client2.id == "nnnn" || client2.name == "Anna" {
                print ("Баланс счета клиента Jeffrey Preston Bezos: \(client2.balance) долларов США")
            }
            
}
    
    
    func moneyTransfer() {
        if client1.balance != nil {
           client1.balance -= 300
           client2.balance += 200
           print ("Money tranfer from client1 to client2 is \(client2.balance) The rest amount of money \(client1.balance)")
           }

}
}

var clientsinfo = Bank(name: "Optima", numberofclients: 0)
clientsinfo.countclients()
clientsinfo.balanceOfCustomers()
clientsinfo.moneyTransfer()
