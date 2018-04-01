print("chao mung ban den voi IOS dev");
let Maximum = 1;
var bien = 1;
var x = 0.0, y = 0.0, z = 0.0
print( x );
var red, green, blue: Double;

struct People{ 
    var name: String
    var age : Int
    var job: String
    func Learn(){
        print("ABC")
    }
}

var mySelf:People = People(name: "Vinh", age: 22, job: "IT");
print(mySelf)

// các kiẻu dữ liệu cơ bản : 
// nếu khai báo var -> tự nhận kiểu khi assign value cho biến 
var myDoublevar = 1.0;
print(myDoublevar)
// khao báo tường minh, minh bạch
var myChar:Character = "A"
// var tenBien:KDL = assignVALUE;
var myBoolean:Bool = true
// let -> Khai báo hằng số ( tức là đéo thể thay đổi giá trị cho biến)
let PI = 3.14
print(PI)


// Operation and Ep kiểu dữ liệu trong swiftV
var so1:Int = 4
var so2:Int = 4
print(so1 + so2)
print(so1 % so2)
print(so1 / so2)


/// Ép kiểu :  chẳng hạn 
// Toán tử ép kiểu: KDLcanEP(BienepKeiu)

var soNguyen:Int = 5;
var soThuc:Float = 10.2;
print(soNguyen + Int(soThuc))
