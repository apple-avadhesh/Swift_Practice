import Foundation

func callAPI(completionHandler: @escaping () -> Void) {
    DispatchQueue.global(qos: .background).async {
        completionHandler()
    }
}

callAPI {
    print("Called HTTP request in the background")
}


let names = ["Arthur", "John", "Rick", "Bob", "Adam", "Robert"]

let nameWithR = names.first { (name) in
    return name.contains("R")
}

print(nameWithR!)
