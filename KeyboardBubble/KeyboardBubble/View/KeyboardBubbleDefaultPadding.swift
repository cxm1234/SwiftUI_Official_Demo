//
//  KeyboardBubbleDefaultPadding.swift
//  KeyboardBubble
//
//  Created by ming on 2022/11/8.
//

import SwiftUI

struct KeyboardBubbleDefaultPadding: View {
    let keyword: String
    let symbol: String
    @ScaledMetric(relativeTo: .title) var paddingWidth = 14.5
    var body: some View {
        Label(keyword, systemImage: symbol)
            .font(.title)
            .foregroundColor(.white)
            .padding(paddingWidth)
            .background(.purple.opacity(0.75), in: Capsule())
    }
}

struct KeyboardBubbleDefaultPadding_Previews: PreviewProvider {
    static let keywords = ["chives", "fern-leaf lavender"]
    static var previews: some View {
        VStack {
            ForEach(keywords, id: \.self) { word in
                KeyboardBubbleDefaultPadding(keyword: word, symbol: "leaf")
            }
        }
    }
}
