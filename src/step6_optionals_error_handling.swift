// オプショナル型
var possibleNumber: Int? = 42
if let actualNumber = possibleNumber {
  print("The number is \(actualNumber)")
} else {
  print("There is no number")
}

// 強制アンラップ
print("Forced unwrapping: \(possibleNumber!)")

// nil 合体演算子
let defaultNumber = 0
let usedNumber = possibleNumber ?? defaultNumber
print("Used number: \(usedNumber)")

// オプショナルチェイニング
struct Book {
  var name: String
  var author: String?
}

var book: Book? = Book(name: "Swift Programming", author: "Apple Inc.")
let authorName = book?.author?.uppercased() ?? "UNKNOWN"
print("Author: \(authorName)")

// エラー処理
enum VendingMachineError: Error {
  case invalidSelection(name: String)
  case insufficientFunds(coinsNeeded: Int)
  case outOfStock
}

func buySnack(name: String, vendingMachine: [String: Int], funds: Int) throws {
  guard let price = vendingMachine[name] else {
    throw VendingMachineError.invalidSelection(name: name)
  }
  guard funds >= price else {
    throw VendingMachineError.insufficientFunds(coinsNeeded: price - funds)
  }
  print("You bought a \(name) for \(price) coins")
}

let snacks = ["Candy": 10, "Chips": 15, "Soda": 20]

do {
  try buySnack(name: "Chips", vendingMachine: snacks, funds: 20)
  try buySnack(name: "Ice Cream", vendingMachine: snacks, funds: 20)
} catch VendingMachineError.invalidSelection(let name) {
  print("Invalid snack selection: \(name)")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
  print("Not enough money, You need \(coinsNeeded) more coins")
} catch {
  print("Unexpected error: \(error)")
}
