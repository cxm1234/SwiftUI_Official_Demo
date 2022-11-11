//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport

struct Episode {
    let title: String
    let showTitle: String
    var isFavorite: Bool
}

struct Podcaster: View {
    @State private var episode = Episode(
        title: "Some Episode",
        showTitle: "Great Show",
        isFavorite: false
    )
    
    var body: some View {
        VStack {
            // 传入一个binding,需要将状态回传
            Toggle("Favorite", isOn: $episode.isFavorite)
            PlayerView(episode: episode)
        }
    }
}

struct PlayerView: View {
    
    let episode: Episode
    
    @State private var isPlaying: Bool = false
    var body: some View {
        VStack {
            Text(episode.title)
            Text(episode.showTitle)
            PlayButton(isPlaying: $isPlaying)
        }
        .background(isPlaying ? Color.green : Color.red)
    }
}

struct PlayButton: View {
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 1)) {
                self.isPlaying.toggle()
            }
        }) {
            Image(systemName: isPlaying ? "pause.circle" : "play.circle").scaleEffect(isPlaying ? 1 : 1.5)
        }
    }
    
}

PlaygroundPage.current.setLiveView(Podcaster())

//: [Next](@next)
