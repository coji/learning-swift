// ジェネリック関数
func swapValues<T>(_ a: inout T, _ b: inout T) {
  let temp = a
  a = b
  b = temp
}

// ジェネリック型
struct Stack<Element> {
  private var items: [Element] = []
  mutating func push(_ item: Element) {
    items.append(item)
  }

  mutating func pop() -> Element? {
    return items.popLast()
  }
}

// カスタムエラー型
enum BankAccountError: Error {
  case insufficientFunds(needed: Int)
  case accountLocked
}

class BankAccount {
  var balance: Int
  var isLocked: Bool

  init(initialBalance: Int) {
    self.balance = initialBalance
    self.isLocked = false
  }

  func withdraw(amount: Int) throws {
    guard !isLocked else {
      throw BankAccountError.accountLocked
    }
    guard balance >= amount else {
      throw BankAccountError.insufficientFunds(needed: amount - balance)
    }
    balance -= amount
  }
}

// ジェネリクスの使用
var a = 5
var b = 10
print("Before swap: a = \(a), b = \(b)")
swapValues(&a, &b)
print("After swap: a = \(a), b = \(b)")

var stringStack = Stack<String>()
stringStack.push("Hello")
stringStack.push("World")
print(stringStack.pop() ?? "")
print(stringStack.pop() ?? "")

// エラー処理の応用
let account = BankAccount(initialBalance: 100)
do {
  try account.withdraw(amount: 50)
  print("successfully withdraw 50, new balance: \(account.balance)")

  try account.withdraw(amount: 75)
} catch BankAccountError.insufficientFunds(let needed) {
  print("Error: Insufficient funds, You need \(needed) more.")
} catch BankAccountError.accountLocked {
  print("Error: Your account is locked.")
} catch {
  print("An unexpected error occurred. \(error)")
}
