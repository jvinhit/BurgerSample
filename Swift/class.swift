protocol SoundBehavior {
    func SayHello()
    func SayMess(mess: String)
}
class Person: SoundBehavior {
    var name:String
    var middleName:String? // Optional prop
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
        if let middleName = middleName { // if middleName != nil 
            return "My FullName : " + middleName + " " + name
        }
        return "My FullName : " + name
    }
    var doubleAge: Int{
        get {
            return age * 2;
        }
        set {
            age = newValue;
        }
    }

    // Lazy Props: 

}

var p:Person = Person(name: "Vinh", age: 20, birthDay: "20/11")


var p2:Person = Person()

// Protocol
p.SayHello()
p2.SayMess(mess: "Vinh dep Trai") 
print("p2.showInfo : \(p2.showInfo)") 
// computed Prop
print("p.showInfo : \(p.showInfo)") 
print("p.doubleAge : \(p.doubleAge)")

print("Set p.age =  \(p.age)")
print("get p.doubleAge:  \(p.doubleAge)")

class House {
    var Rect: Float
    init(Rect: Float){
        self.Rect = Rect
    }
    // Lazy Props
    lazy var owner:Person = Person(name: "Vinh", age: 20, birthDay: "20/11")
}

var house = House(Rect: 300.1)
print("\(house.owner)")
