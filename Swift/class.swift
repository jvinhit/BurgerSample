protocol SoundBehavior {
    func SayHello()
    func SayMess(mess: String)
}
class Person: SoundBehavior {
    var name:String
    var age:Int
    var birthDay: String
    init(name: String, age: Int, birthDay: String){
        self.name = name
        self.age = age
        self.birthDay = birthDay
    }
    convenience init(){
        self.init(name:"", age: 0, birthDay:"")

    }
    // implement Protocols
    func SayHello(){
    }
    func SayMess(mess: String){
        print(mess)
    }
    // computed prop
    var showInfo: String {
        return "My name is " 
    }
}

var p:Person = Person(name: "Vinh", age: 20, birthDay: "20/11")


var p2:Person = Person()


p.SayHello()
p2.SayMess(mess: "Vinh dep Trai")