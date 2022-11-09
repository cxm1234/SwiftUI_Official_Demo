//
//  SwiftUIView.swift
//  TrainCar
//
//  Created by ming on 2022/11/9.
//

import SwiftUI

struct AddingSpacer: View {
    var body: some View {
        Text("Spacer")
        HStack {
            TrainCar(.rear)
            ZStack {
                TrainCar(.middle)
                    .font(.largeTitle)
                    .opacity(0)
                    .background(Color.blue)
                TrainCar(.middle)
            }
            TrainCar(.front)
        }
    }
}

struct AddingSpacer_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            AddingSpacer()
        }
    }
}
