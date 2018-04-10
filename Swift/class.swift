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
        print("INIT DESIGNATED")
    }
    convenience init(){
        self.init(name:"", age: 0, birthDay:"")
        print("INIT convenience")

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

    // Observer Props
    var items = [String]() {
        
        willSet { // prepared update value
            print("WillSet")
            // 
        }
        
        didSet { // assigned value
            print("DidSet")
            ///
        }
        
        
    }
}

var house = House(Rect: 300.1)
// print("\(house.owner)") // if comment : not show INIT DESIGNATED


house.items.append("oven/cooker")


// Extension class
extension House {
    func desc(){
        print("RECT: \(self.Rect)")
    }

}

house.desc()


extension Double {
    var km: Double { return self/1000 }
}

var Destination: Double = 1
print("Destination.km \(Destination.km)")



/// Type casting : 
class MediaItem {
    var name: String
    init(name: String){
        self.name = name 
    }
}

class Movie:MediaItem {
    var director: String
    init(name: String, director: String){
        self.director = director
        super.init(name: name)
    }
}
class Song: MediaItem{

    var artist: String
    init(name: String, artist: String){
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]

var movieCount = 0
var songCount = 0 
// checking type:  using "is" operator

for item in library {
    if item is Movie {
        movieCount += 1
    }else if item is Song {
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")
// downcasting: downcast to the subclass type with a type cast operator as? as!
for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}