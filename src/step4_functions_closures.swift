// 基本的な関数
func greet(name: String) -> String {
  return "Hello, \(name)!"
}
print(greet(name: "Alice"))

// 複数の引数を持つ関数
func calculateArea(width: Double, height: Double) -> Double {
  return width * height
}
let area = calculateArea(width: 5.0, height: 3.0)
print("The area is \(area)")

// デフォルト引数を持つ関数
func power(base: Int, exponent: Int = 2) -> Int {
  var result = 1
  for _ in 1...exponent {
    result *= base
  }
  return result
}
print("3 squared is \(power(base: 3))")
print("3 to the power of 4 is \(power(base: 3, exponent: 4))")

// 簡単なクロージャ
let numbers = [1, 2, 3, 4, 5]
let squaredNumbers = numbers.map { number in return number * number }
print("Squared numbers: \(squaredNumbers)")

// クロージャを引数として受け取る関数
func performOperation(_ operation: (Int, Int) -> Int, on a: Int, and b: Int) -> Int {
  return operation(a, b)
}
let sum = performOperation(+, on: 5, and: 3)
print("Sum: \(sum)")
let product = performOperation(*, on: 5, and: 3)
print("Product: \(product)")
let power_result = performOperation(power, on: 2, and: 2)
print("Power: \(power_result)")
