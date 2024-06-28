// 基本的なクロージャ
let simpleClosure = { (name: String) in
  return "Hello, \(name)"
}
print(simpleClosure("Swift"))

// クロージャを受け取る関数
func performOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
  return operation(a, b)
}
let sum = performOperation(5, 3) { $0 + $1 }
print("Sum \(sum)")

// 高階関数: map
let numbers = [1, 2, 3, 4, 5]
let squaredNumbers = numbers.map { $0 * $0 }
print("Squared numbers: \(squaredNumbers)")

// 高階関数: filter
let evenNumbers = numbers.filter { $0 % 2 == 0 }
print("Even numbers: \(evenNumbers)")

// 高階関数: reduce
let sum_of_numbers = numbers.reduce(0, +)
print("Sum of numbers: \(sum_of_numbers)")

// クロージャのキャプチャ
func makeIncrementer(incrementAmount: Int) -> () -> Int {
  var total = 0
  let incrementer: () -> Int = {
    total += incrementAmount
    return total
  }
  return incrementer
}
let incrementByTen = makeIncrementer(incrementAmount: 10)
print(incrementByTen())
print(incrementByTen())

// 関数型プログラミング: 合成
func compose<A, B, C>(_ f: @escaping (B) -> C, _ g: @escaping (A) -> B) -> (A) -> C {
  return { f(g($0)) }
}
let toString: (Int) -> String = { String($0) }
let addOne: (Int) -> Int = { $0 + 1 }
let addOneToString = compose(toString, addOne)
print(addOneToString(41))
