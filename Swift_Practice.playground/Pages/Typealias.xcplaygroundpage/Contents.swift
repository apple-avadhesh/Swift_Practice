import Foundation


//MARK: Example 1
typealias Duration = Double

let duration1: Duration = 180
let duration2: TimeInterval = 180 //TimeInterval is Typealias for Double

let totalDuration = duration1 + duration2
print(totalDuration)


typealias Point = (x: Double, y: Double)

let point = Point(1.5, 7.5)
print(point)



//MARK: Example 2


// MARK: - DemoJSON
struct DemoJSON: Codable {
    let menu: Menu
}

// MARK: - Menu
struct Menu: Codable {
    let id, value: String
    let popup: Popup
}

// MARK: - Popup
struct Popup: Codable {
    let menuitem: [Menuitem]
}

// MARK: - Menuitem
struct Menuitem: Codable {
    let value, onclick: String
}

//MARK: Make Network Request
typealias RequestCompletionHandler<T: Decodable> = (_ value: T?, _ error: Error?) -> Void

func callAPI<T: Decodable>(completionHandler: RequestCompletionHandler<T>) {
    
/// Multiline String Literal
    
let data = """
{"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}}
""".data(using: .utf8)!
    do {
        let value = try JSONDecoder().decode(T.self, from: data)
        completionHandler(value, nil)
    } catch {
        completionHandler(nil, error)
    }
}

callAPI { (model: DemoJSON?, error) in
    if let demoModel = model {
        print("Success: \(demoModel)")
    } else if let error = error {
        print("Error: \(error)")
    }
}
