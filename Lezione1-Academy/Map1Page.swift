//
//  SwiftUIView.swift
//  Lezione1-Academy
//
//  Created by Antonio D'amore on 16/11/21.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack{
           
//            DatePicker(selection: .constant(Date()), label: { Text("Completed") })
//                .datePickerStyle(.graphical)
//
            Image( uiImage: UIImage (named:"mappa-pagina1.png" )! )
                .resizable()
                .frame(width: 300, height: 200, alignment: .center)
                .padding(100)
                
            Text ("1 di 25 ")
                
            ProgressView(value: 0.5)
                .frame(width: 300, height: 200, alignment: .top)
                .progressViewStyle(LinearProgressViewStyle(tint:ColorManager.ORANGE))
                
            
                
        }
        .padding(.all)
    }
}

