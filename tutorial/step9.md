
# 課題9: クロージャと高階関数

1. 新しいファイルを作成し、`step9_closures_functional_programming.swift` という名前で保存してください。

2. 以下のコードを入力してください:

```swift
// 基本的なクロージャ
let simpleClosure = { (name: String) -> String in
    return "Hello, \(name)!"
}

print(simpleClosure("Swift"))

// クロージャを受け取る関数
func performOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let sum = performOperation(5, 3) { $0 + $1 }
print("Sum: \(sum)")

let product = performOperation(5, 3) { (a, b) in a * b }
print("Product: \(product)")

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
print(incrementByTen()) // 10
print(incrementByTen()) // 20

// 関数型プログラミング: 合成
func compose<A, B, C>(_ f: @escaping (B) -> C, _ g: @escaping (A) -> B) -> (A) -> C {
    return { f(g($0)) }
}

let toString: (Int) -> String = { String($0) }
let addOne: (Int) -> Int = { $0 + 1 }
let addOneAndStringify = compose(toString, addOne)

print(addOneAndStringify(41)) // "42"
```

3. ターミナルで、このファイルがあるディレクトリに移動し、以下のコマンドを実行してください:

```
swift step9_closures_functional_programming.swift
```

4. 出力を確認してください。

このコードでは以下のことを学びました:

1. クロージャの基本的な構文と使用方法
2. クロージャを引数として受け取る関数の定義と使用
3. 高階関数（map, filter, reduce）の使用方法
4. クロージャによる変数のキャプチャ
5. 関数合成など、関数型プログラミングの基本的な概念

これらの概念は、Swiftでより表現力豊かで柔軟なコードを書くための基礎となります。特に、高階関数を使うことで、データの操作をより宣言的に行うことができます。

質問があればどうぞ。理解できて、準備ができたら次のステップに進みましょう。
