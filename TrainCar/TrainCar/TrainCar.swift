//
//  TrainCar.swift
//  TrainCar
//
//  Created by ming on 2022/11/9.
//

import SwiftUI

enum TrainSymbol: String {
case front = "train.side.front.car"
case middle = "train.side.middle.car"
case rear = "train.side.rear.car"
}

struct TrainCar: View {
    let position: TrainSymbol
    let showFrame: Bool
    
    init(_ position: TrainSymbol, showFrame: Bool = true) {
        self.position = position
        self.showFrame = showFrame
    }
    
    var body: some View {
        Image(systemName: position.rawValue).background(Color("CustomPink"))
    }
}

struct TrainCar_Previews: PreviewProvider {
    static var previews: some View {
        TrainCar(.front)
    }
}
