
# 課題7: プロトコルと拡張

このステップでは、Swiftの重要な機能であるプロトコルと拡張について学びます。これらの機能は、コードの再利用性と柔軟性を高めるのに役立ちます。

1. 新しいファイルを作成し、`step7_protocols_extensions.swift` という名前で保存してください。

2. 以下のコードを入力してください:

```swift
// プロトコルの定義
protocol Vehicle {
    var numberOfWheels: Int { get }
    func startEngine()
}

// 構造体がプロトコルに準拠
struct Car: Vehicle {
    let numberOfWheels: Int = 4
    
    func startEngine() {
        print("Car engine started")
    }
}

// クラスがプロトコルに準拠
class Motorcycle: Vehicle {
    let numberOfWheels: Int = 2
    
    func startEngine() {
        print("Motorcycle engine started")
    }
}

// プロトコル拡張
extension Vehicle {
    func describe() {
        print("This vehicle has \(numberOfWheels) wheels")
    }
}

// 既存の型に対する拡張
extension Int {
    var squared: Int {
        return self * self
    }
}

// プロトコルと拡張の使用
let car = Car()
car.startEngine()
car.describe()

let motorcycle = Motorcycle()
motorcycle.startEngine()
motorcycle.describe()

let number = 5
print("\(number) squared is \(number.squared)")
```

3. ターミナルで、このファイルがあるディレクトリに移動し、以下のコマンドを実行してください:

```
swift step7_protocols_extensions.swift
```

4. 以下のような出力が表示されるはずです:

```
Car engine started
This vehicle has 4 wheels
Motorcycle engine started
This vehicle has 2 wheels
5 squared is 25
```

このコードでは以下のことを学びました:

1. プロトコルの定義方法
2. 構造体とクラスがプロトコルに準拠する方法
3. プロトコル拡張を使用して、準拠する型すべてにデフォルトの実装を提供する方法
4. 既存の型（この場合はInt）に新しい機能を追加する方法

プロトコルと拡張は、Swiftの非常に強力な機能です。これらを使うことで、柔軟で再利用可能なコードを書くことができます。

質問があればどうぞ。理解できて、準備ができたら次のステップに進みましょう。
