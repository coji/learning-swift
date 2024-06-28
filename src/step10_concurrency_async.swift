import Foundation

// 基本的な非同期関数
func fetchData(completion: @escaping (String) -> Void) {
  DispatchQueue.global().async {
    // データ取得をシミュレート
    Thread.sleep(forTimeInterval: 2)
    let result = "Fetched data"
    completion(result)
  }
}

// async/await を使用した非同期関数
func fetchDataAsync() async -> String {
  // データ取得をシミュレート
  try? await Task.sleep(nanoseconds: 2_000_000_000)
  return "Async fetched data"
}

// 複数の非同期操作
func fetchMultipleData() async -> (String, String) {
  async let first = fetchDataAsync()
  async let second = fetchDataAsync()
  return await (first, second)
}

// エラーハンドリングを含む非同期関数
enum FetchError: Error {
  case networkError
}

func fetchWithError() async throws -> String {
  // エラーをシミュレート
  throw FetchError.networkError
}

// メイン関数
func main() async throws {
  print("Starting async operations...")

  let result = await fetchDataAsync()
  print("Async result: \(result)")

  let (first, second) = await fetchMultipleData()
  print("Multiple results: \(first), \(second)")

  do {
    let errorResult = try await fetchWithError()
    print("This won't be printed \(errorResult)")
  } catch {
    print("Caught error: \(error)")
  }

  print("All async operations completed")

  print("Starting fetch...")
  fetchData { result in
    print("Result: \(result)")
  }
  print("Fetch initiated")

  // メインスレッドを少し待機させる
  try await Task.sleep(nanoseconds: 3_000_000_000)  // 3秒待機
}

// メイン関数の呼び出し
try await main()
