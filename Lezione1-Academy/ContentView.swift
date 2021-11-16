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
    
    var countrys = ["Japan","Spain","2"]
    var body: some View {
        VStack{
      
            ScrollView(.horizontal){
                HStack {
    
                 
            RoundedRectangle(cornerRadius: 44)
                    .fill(ColorManager.VERDE)
                    .frame(width: 63, height: 103)
                
                    
               
                    
                }
            }
        ScrollView(.horizontal){
            HStack{
                ForEach(countrys, id:\.self) {country in
            Image(country)
            .resizable()
            .frame(width: 241, height: 292, alignment: .center)
            .background(Color.white)
            .cornerRadius(5)
            .statusBar(hidden: false)
            .shadow(color: Color.gray ,radius:26, x:-5, y:13)
 
                }
            }
                //ForEach
                
            }//ForEach2
               
                
            
            } //Vstack
        } //body
   
} //view
       
    


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
