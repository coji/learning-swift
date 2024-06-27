
# 課題6: オプショナル型とエラー処理

このステップでは、Swiftの重要な機能であるオプショナル型と基本的なエラー処理について学びます。

1. 新しいファイルを作成し、`step6_optionals_error_handling.swift` という名前で保存してください。

2. 以下のコードを入力してください:

```swift
// オプショナル型
var possibleNumber: Int? = 42

if let actualNumber = possibleNumber {
    print("The number is \(actualNumber)")
} else {
    print("There is no number")
}

// 強制アンラップ（注意: 安全でない場合があります）
print("Forced unwrapping: \(possibleNumber!)")

// nil合体演算子
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
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

func buySnack(name: String, vendingMachine: [String: Int], funds: Int) throws {
    guard let price = vendingMachine[name] else {
        throw VendingMachineError.invalidSelection
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
} catch VendingMachineError.invalidSelection {
    print("Invalid snack selection")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("Not enough money. You need \(coinsNeeded) more coins")
} catch {
    print("Unexpected error: \(error)")
}
```

3. ターミナルで、このファイルがあるディレクトリに移動し、以下のコマンドを実行してください:

```
swift step6_optionals_error_handling.swift
```

4. 以下のような出力が表示されるはずです:

```
The number is 42
Forced unwrapping: 42
Used number: 42
Author: APPLE INC.
You bought a Chips for 15 coins
Invalid snack selection
```

このコードでは以下のことを学びました:

1. オプショナル型の基本的な使い方
2. オプショナルバインディング（if let）
3. 強制アンラップ（!）の使用と注意点
4. nil合体演算子（??）の使用
5. オプショナルチェイニング
6. 基本的なエラー処理（do-try-catch）
7. カスタムエラー型の定義

オプショナル型とエラー処理は、Swiftの安全性を高める重要な機能です。これらを適切に使用することで、より堅牢なコードを書くことができます。

質問があればどうぞ。理解できて、準備ができたら次のステップに進みましょう。
