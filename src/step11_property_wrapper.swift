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
