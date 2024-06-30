
# 課題11: Property Wrapper

Property Wrapper（プロパティラッパー）は Swift 5.1 で導入された強力な機能です。これを使用すると、プロパティの振る舞いをカスタマイズし、コードの再利用性を高めることができます。

1. 新しいファイルを作成し、`step11_property_wrapper.swift` という名前で保存してください。

2. 以下のコードを入力してください:

```swift
import Foundation

// 1. 基本的な Property Wrapper
@propertyWrapper
struct Clamped<T: Comparable> {
  private var value: T
  let range: ClosedRange<T>

  init(wrappedValue: T, range: ClosedRange<T>) {
    self.range = range
    self.value = min(max(wrappedValue, range.lowerBound), range.upperBound)
  }

  var wrappedValue: T {
    get { value }
    set { value = min(max(newValue, range.lowerBound), range.upperBound) }
  }
}

// 2. Property Wrapper の使用例
struct Temperature {
  @Clamped(wrappedValue: 0, range: -273.15...100.0)
  var celsius: Double
}

// 3. 別の Property Wrapper の例(文字列の先頭を大文字に)
@propertyWrapper
struct Capitalized {
  private var value: String = ""

  init(wrappedValue: String) {
    self.wrappedValue = wrappedValue
  }

  var wrappedValue: String {
    get { value }
    set { value = newValue.capitalized }
  }
}

// 4. 複数の Property Wrapper を組み合わせる
struct Person {
  @Capitalized
  var name: String

  @Clamped(wrappedValue: 0, range: 0...150)
  var age: Int

  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
}

// メイン関数
func main() {
  // Clamped の使用
  var temp = Temperature()
  temp.celsius = -300  // 範囲外の値を設定
  print("Clamped temperature: \(temp.celsius)")  // -273.15

  temp.celsius = 50  // 範囲内の値を設定
  print("Normal temperature: \(temp.celsius)")  // 50.0

  // Capitalized の使用
  var person = Person(name: "John Doe", age: 30)
  print("Capitalized name: \(person.name)")  // John Doe

  // 年齢の制限をテスト
  person.age = 200
  print("Clamped age: \(person.age)")  // 150
}

main()
```

3. このコードを保存し、ターミナルで以下のコマンドを実行してください:

```
swift step11_property_wrapper.swift
```

4. 出力を確認し、Property Wrapper の動作を観察してください。

このコードでは以下のことを学びます:

1. 基本的な Property Wrapper の定義方法
2. Generic を使用した Property Wrapper の作成
3. Property Wrapper の実際の使用方法
4. 複数の Property Wrapper の組み合わせ

Property Wrapper は、値の検証、変換、または特定の動作の追加など、プロパティの振る舞いをカスタマイズするのに非常に便利です。この例では、値の範囲を制限する `Clamped` と、文字列を自動的に大文字化する `Capitalized` という2つの Property Wrapper を紹介しています。

このコードを実行し、その動作を観察することで、Property Wrapper の概念とその実用的な応用をより深く理解できるでしょう。
