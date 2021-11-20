//
//  SwiftUIView.swift
//  Lezione1-Academy
//
//  Created by Antonio D'amore on 16/11/21.
//

import SwiftUI
import Progress_Bar

struct ContentView: View {
    
    var body: some View {
        VStack{
           
            Text ("Progress View  ")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, -20.0)
            
            Image("mappa.svg")
                .resizable()
                .frame(width: 400, height: 200, alignment: .top)
                .padding(20)
            
            Text (" Countries completed :")
                .font(.body)
                .fontWeight(.semibold)
                .padding()
//            ProgressView(value: 0.1)
//                .frame(width: 300, height: 200, alignment: .top)
//                .progressViewStyle(LinearProgressViewStyle(tint:ColorManager.ORANGE))
            
            CircularProgress(percentage: 0.1,
    fontSize: 25,
    backgroundColor: .white,
    fontColor : .black,
    borderColor1: .GREEN,
                             borderColor2: LinearGradient(gradient: Gradient(colors: [ColorManager.ORANGE, ColorManager.GREENL]),startPoint: .top, endPoint: .bottom),
    borderWidth: 20
                             )
                             .frame(width: 200, height: 200, alignment: .center)
                             .padding()
           
            
//            CircularProgress(
//              percentage: 1,
//              fontSize: 2,
//              backgroundColor: Color,
//              fontColor: Color,
//              borderColor1: Color,
//              borderColor2: LinearGradient,
//              borderWidth: CGFloat)
            
                
        }
        .padding(.bottom, 50.0)
    }
}

