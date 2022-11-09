//
//  DefaultSpacing.swift
//  TrainCar
//
//  Created by ming on 2022/11/9.
//

import SwiftUI

struct DefaultSpacing: View {
    @ScaledMetric var trainCarSpace = 5
    var body: some View {
        Text("Default Spacing")
        HStack {
            TrainCar(.rear)
            TrainCar(.middle)
            TrainCar(.front)
        }
        .padding()
        .background(Color.blue)
    }
}

struct DefaultSpacing_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DefaultSpacing()
        }
    }
}
