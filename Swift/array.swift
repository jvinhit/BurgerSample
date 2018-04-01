// create empty array : 
var someInts = [Int]();
print("Some \(someInts.count)")

someInts.append(3)

print("Some \(someInts.count)")

// create Array with default Value : Array(repeating, count): 
// repeating : defualt value 
// count: lenght
var threeDouble = Array(repeating: 0.0, count: 5)
// -> three Double is [0.0,0.0, ... 5 times]
print("Length of three double : \(threeDouble.count)")

