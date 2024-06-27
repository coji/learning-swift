// 構造体の定義
struct Point {
  var x: Double
  var y: Double

  // メソッド
  func distanceFromOrigin() -> Double {
    return (x * x + y * y).squareRoot()
  }
}

// 構造体の使用
var point = Point(x: 3, y: 4)
print("Distance form origin: \(point.distanceFromOrigin())")

// 構造体は値型
var anotherPoint = point
anotherPoint.x = 10
print("Original point: \(point.x) \(point.y)")
print("Another point: \(anotherPoint.x) \(anotherPoint.y)")

// クラスの定義
class Person {
  var name: String
  var age: Int

  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }

  func introduce() {
    print("Hi, I'm \(name) and I'm \(age) years old.")
  }
}

// クラスの使用
let person = Person(name: "Alice", age: 30)
person.introduce()

// クラスは参照型
let anotherPerson = person
anotherPerson.age = 31
print("\(person.name)'s age: \(person.age)")
print("\(anotherPerson.name)'s age: \(anotherPerson.age)")
