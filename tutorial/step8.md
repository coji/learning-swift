
# 課題8: ジェネリクスとエラー処理の応用

このステップでは、ジェネリクスの基本と、より高度なエラー処理について学びます。これらの概念は、柔軟で堅牢なコードを書く上で非常に重要です。

1. 新しいファイルを作成し、`step8_generics_advanced_error_handling.swift` という名前で保存してください。

2. 以下のコードを入力してください:

```swift
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
    print("Successfully withdrew 50. New balance: \(account.balance)")
    
    try account.withdraw(amount: 75)
} catch BankAccountError.insufficientFunds(let needed) {
    print("Error: Insufficient funds. You need \(needed) more.")
} catch BankAccountError.accountLocked {
    print("Error: Your account is locked.")
} catch {
    print("An unexpected error occurred: \(error)")
}
```

3. ターミナルで、このファイルがあるディレクトリに移動し、以下のコマンドを実行してください:

```
swift step8_generics_advanced_error_handling.swift
```

4. 以下のような出力が表示されるはずです:

```
Before swap: a = 5, b = 10
After swap: a = 10, b = 5
World
Hello
Successfully withdrew 50. New balance: 50
Error: Insufficient funds. You need 25 more.
```

このコードでは以下のことを学びました:

1. ジェネリック関数の定義と使用方法
2. ジェネリック型（この場合は`Stack`）の定義と使用方法
3. より複雑なカスタムエラー型の定義
4. `do-try-catch`を使用したより詳細なエラー処理

ジェネリクスを使うことで、型に依存しない汎用的なコードを書くことができ、エラー処理を適切に行うことで、予期せぬ状況に対してより堅牢なプログラムを作ることができます。

質問があればどうぞ。理解できて、準備ができたら次のステップに進みましょう。
