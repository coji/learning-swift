
# 課題4: 関数とクロージャ

このステップでは、Swiftの関数定義と使用方法、そして簡単なクロージャについて学びます。

1. 新しいファイルを作成し、`step4_functions_closures.swift` という名前で保存してください。

2. 以下のコードを入力してください:

```swift
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
print("The area is: \(area)")

// デフォルト引数を持つ関数
func power(base: Int, exponent: Int = 2) -> Int {
    var result = 1
    for _ in 1...exponent {
        result *= base
    }
    return result
}

print("3 squared is: \(power(base: 3))")
print("3 to the power of 4 is: \(power(base: 3, exponent: 4))")

// 簡単なクロージャ
let numbers = [1, 2, 3, 4, 5]

let squaredNumbers = numbers.map { number in
    return number * number
}

print("Squared numbers: \(squaredNumbers)")

// クロージャを引数として受け取る関数
func performOperation(_ operation: (Int, Int) -> Int, on a: Int, and b: Int) -> Int {
    return operation(a, b)
}

let sum = performOperation(+, on: 5, and: 3)
print("Sum: \(sum)")

let product = performOperation(*, on: 5, and: 3)
print("Product: \(product)")
```

3. ターミナルで、このファイルがあるディレクトリに移動し、以下のコマンドを実行してください:

```
swift step4_functions_closures.swift
```

4. 以下のような出力が表示されるはずです:

```
Hello, Alice!
The area is: 15.0
3 squared is: 9
3 to the power of 4 is: 81
Squared numbers: [1, 4, 9, 16, 25]
Sum: 8
Product: 15
```

このコードでは以下のことを学びました:

- 基本的な関数の定義と呼び出し方
- 複数の引数を持つ関数
- デフォルト引数を持つ関数
- クロージャの基本的な使い方（`map` 関数との組み合わせ）
- クロージャを引数として受け取る関数

関数とクロージャは、コードの再利用性と柔軟性を高める重要な概念です。それぞれの使い方と動作を理解できましたか？

質問があればどうぞ。理解できて、準備ができたら次のステップに進みましょう。
