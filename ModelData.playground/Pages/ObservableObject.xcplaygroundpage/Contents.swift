//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport

class Contact: ObservableObject {
    @Published var name: String
    @Published var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func haveBirthday() -> Int {
        age += 1
        return age
    }
}

let john = Contact(name: "John Appleseed", age: 24)
let cancellable = john.objectWillChange.sink { _ in
    print("\(john.age) will change")
}
print(john.haveBirthday())

//: [Next](@next)
