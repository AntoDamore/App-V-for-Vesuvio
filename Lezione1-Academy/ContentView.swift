//
//  ContentView.swift
//  Lezione1-Academy
//
//  Created by Antonio D'amore on 15/11/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Summary", systemImage: "map")
                }

            ContentViewMappa()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}

struct ContentViewMappa: View {
    var body: some View {
        LazyVStack {
        Image( "Japan")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .background(Color.blue)
        }
    }
}

struct ContentView: View {
    var body: some View {
       

        VStack{
            Image( uiImage: UIImage (named:"mappa-pagina1.png" )! )
                .resizable()
                .frame(width: 300, height: 200, alignment: .center)
                .padding(100)
            Text ( "1 di 25 ")
                
            ProgressView(value: 0.5)
                .frame(width: 300, height: 200, alignment: .top)
                .progressViewStyle(LinearProgressViewStyle(tint:ColorManager.ORANGE))
            
            
                
        }
        .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
