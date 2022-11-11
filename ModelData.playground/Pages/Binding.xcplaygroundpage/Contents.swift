//: [Previous](@previous)
import SwiftUI
import PlaygroundSupport

struct Episode {
    let title: String
    let showTitle: String
    var isFavorite: Bool
}

struct PlayButton: View {
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(isPlaying ? "Pause" : "Play") {
            isPlaying.toggle()
        }
    }
}

struct PlayerView: View {
    var episode: Episode = Episode(
        title: "Some Episode",
        showTitle: "Great Show",
        isFavorite: false
    )
    @State private var isPlaying: Bool = false
    
    var body: some View {
        VStack {
            Text(episode.title)
                .foregroundStyle(isPlaying ? .primary : .secondary)
            PlayButton(isPlaying: $isPlaying)
        }
    }
    
}

//PlaygroundPage.current.setLiveView(PlayButton())

//: [Next](@next)
