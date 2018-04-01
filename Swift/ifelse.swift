// Cấu trúc rẽ nhánh if : 
var a:Int = 1;
var b:Int = 2;
if a == b {
    print("a = b");
}else if a > b {
    print("a > b ");
}else {
    print("a < b ")
}
var x:Bool = false;
var y:Bool = true;

if x == false && ( 1 == 1 || y == true){
    print("Pass")
}
// Kiểu dữ liệu tuple : 
let dosome = (1, "111") // define tuple with index default
print("tubple at position 0 is : \(dosome.0)")
let dosome2 = (name: "Vinh", age: 20); // define tuple with key value
print("tuple with key value : NAME: \(dosome2.name) - AGE: \(dosome2.age)")


// Khái niệm nil
var biens:Int? = 3
var bien2:Int! = 2

