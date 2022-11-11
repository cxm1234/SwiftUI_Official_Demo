//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    
    @State private var isVisible = true
    
    var body: some View {
        VStack {
            if isVisible {
                Text("Hello")
            }
            Toggle("Visible", isOn: $isVisible)
        }
    }
    
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.setLiveView(ContentView())
