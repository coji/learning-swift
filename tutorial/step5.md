
# 課題5: 構造体とクラス

このステップでは、Swiftの構造体（struct）とクラス（class）の基本を学びます。これらは、関連するプロパティとメソッドをグループ化するための基本的な構成要素です。

1. 新しいファイルを作成し、`step5_structs_classes.swift` という名前で保存してください。

2. 以下のコードを入力してください:

```swift
// 構造体の定義
struct Point {
    var x: Double
    var y: Double

    // メソッド
    func distanceFromOrigin() -> Double {
        return (x * x + y * y).squareRoot()
    }
}

// 構造体の使用
var point = Point(x: 3, y: 4)
print("Distance from origin: \(point.distanceFromOrigin())")

// 構造体は値型
var anotherPoint = point
anotherPoint.x = 10
print("Original point: \(point.x), \(point.y)")
print("Another point: \(anotherPoint.x), \(anotherPoint.y)")

// クラスの定義
class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func introduce() {
        print("Hi, I'm \(name) and I'm \(age) years old.")
    }
}

// クラスの使用
let person = Person(name: "Alice", age: 30)
person.introduce()

// クラスは参照型
let anotherPerson = person
anotherPerson.age = 31
print("\(person.name)'s age: \(person.age)")
print("\(anotherPerson.name)'s age: \(anotherPerson.age)")
```

3. ターミナルで、このファイルがあるディレクトリに移動し、以下のコマンドを実行してください:

```
swift step5_structs_classes.swift
```

4. 以下のような出力が表示されるはずです:

```
Distance from origin: 5.0
Original point: 3.0, 4.0
Another point: 10.0, 4.0
Hi, I'm Alice and I'm 30 years old.
Alice's age: 31
Alice's age: 31
```

このコードでは以下のことを学びました:

1. 構造体（struct）の定義と使用方法
2. クラス（class）の定義と使用方法
3. メソッドの定義と呼び出し
4. 構造体が値型であることの意味（コピーされる）
5. クラスが参照型であることの意味（参照が共有される）
6. クラスのイニシャライザ（init）の基本

構造体とクラスの違い、特に値型と参照型の違いに注目してください。これはSwiftプログラミングにおいて非常に重要な概念です。

質問があればどうぞ。理解できて、準備ができたら次のステップに進みましょう。
