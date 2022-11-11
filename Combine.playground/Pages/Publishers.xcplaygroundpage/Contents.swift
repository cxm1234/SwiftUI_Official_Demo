//: [Previous](@previous)

import Foundation
import UIKit
import Combine
import PlaygroundSupport

class MyViewModel {
    var filterString: String? {
        didSet {
            if let string = filterString {
                print("filterString \(string)")
            }
        }
    }
}

let myViewModel = MyViewModel()

let filterField = UITextField(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 50)))

let sub = NotificationCenter.default
    .publisher(
        for: UITextField.textDidChangeNotification,
        object: filterField
    )
    .map( { ($0.object as! UITextField).text } )
    .filter(
        {
            if let string = $0 {
                return string
                    .unicodeScalars
                    .allSatisfy({CharacterSet.alphanumerics.contains($0)})
            } else {
                return false
            }
        }
    )
    .debounce(for: .milliseconds(500), scheduler: RunLoop.main)
    .receive(on: RunLoop.main)
    .assign(to: \MyViewModel.filterString, on: myViewModel)

//sub.cancel()

PlaygroundPage.current.setLiveView(filterField)

//: [Next](@next)
