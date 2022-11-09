//
//  ContentView.swift
//  IfElseTrain
//
//  Created by ming on 2022/11/9.
//

import SwiftUI

struct IfElseTrainView: View {
    var longerTrain: Bool
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "train.side.rear.car")
                Image(systemName: "train.side.middle.car").opacity(longerTrain ? 1 : 0)
//                if longerTrain {
//                    Image(systemName: "train.side.middle.car")
//                }
                Image(systemName: "train.side.front.car")
            }
            Divider()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        IfElseTrainView(longerTrain: true)
        IfElseTrainView(longerTrain: false)
    }
}
