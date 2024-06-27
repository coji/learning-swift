// プロトコルの定義
protocol Vehicle {
  var numberOfWheels: Int { get }
  func startEngine()
}

// 構造体がプロトコルに準拠
struct Car: Vehicle {
  let numberOfWheels: Int = 4
  func startEngine() {
    print("Car engine started")
  }
}

// クラスがプロトコルに準拠
class Motorcycle: Vehicle {
  let numberOfWheels: Int = 2
  func startEngine() {
    print("Motorcycle engine started")
  }
}

// プロトコル拡張
extension Vehicle {
  func describe() {
    print("This vehicle has \(numberOfWheels) wheels")
  }
}

// 既存の型に対する拡張
extension Int {
  var squared: Int {
    return self * self
  }
}

// プロトコルと拡張の使用
let car = Car()
car.startEngine()
car.describe()

let motorcycle = Motorcycle()
motorcycle.startEngine()
motorcycle.describe()

let number = 5
print("\(number) squared is \(number.squared)")
