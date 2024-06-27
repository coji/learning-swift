
# 課題3: 基本的な制御フロー

このステップでは、Swiftの基本的な制御フロー構文を学びます。具体的には、条件分岐（if文）と繰り返し（for文）を使用します。

1. 新しいファイルを作成し、`step3_control_flow.swift` という名前で保存してください。

2. 以下のコードを入力してください:

```swift
// if文による条件分岐
let temperature = 25

if temperature > 30 {
    print("It's very hot!")
} else if temperature > 20 {
    print("It's a nice day.")
} else {
    print("It's a bit cold.")
}

// for-in ループによる繰り返し
print("\nCounting from 1 to 5:")
for i in 1...5 {
    print("Number \(i)")
}

// 配列の要素を繰り返し処理
let fruits = ["apple", "banana", "orange"]
print("\nMy favorite fruits:")
for fruit in fruits {
    print(fruit)
}

// while ループの例
print("\nCountdown:")
var countdown = 3
while countdown > 0 {
    print(countdown)
    countdown -= 1
}
print("Liftoff!")
```

3. ターミナルで、このファイルがあるディレクトリに移動し、以下のコマンドを実行してください:

```
swift step3_control_flow.swift
```

4. 以下のような出力が表示されるはずです:

```
It's a nice day.

Counting from 1 to 5:
Number 1
Number 2
Number 3
Number 4
Number 5

My favorite fruits:
apple
banana
orange

Countdown:
3
2
1
Liftoff!
```

このコードでは以下のことを学びました:

- `if`、`else if`、`else` を使用した条件分岐
- `for-in` ループを使用した範囲（レンジ）の繰り返し
- 配列の要素に対する `for-in` ループの使用
- `while` ループの基本的な使い方

これらの制御フロー構文は、プログラミングの基本的な構成要素です。それぞれの動作を理解できましたか？

質問があればどうぞ。理解できて、準備ができたら次のステップに進みましょう。
