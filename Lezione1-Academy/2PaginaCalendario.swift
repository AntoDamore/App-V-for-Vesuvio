//
//  2PaginaCalendario.swift
//  Lezione1-Academy
//
//  Created by Antonio D'amore on 16/11/21.
//
import SwiftUI
import CoreMedia
struct CalendarView : View {
    @StateObject var archive = Countries(countries: [
        italia
//        Country(id: 1, name: "Italy" ),
//        Country(id: 2, name : "Australia"),
//        Country(id: 3, name : "Singapore"),
//        Country(id: 4, name : "Spain"),
//        Country(id: 5, name : "Brazil"),
//        Country(id: 6, name : "Chile"),
//        Country(id: 7, name : "China"),
//        Country(id: 8, name : "Cyprus"),
//        Country(id: 9, name : "Iceland"),
//        Country(id: 10, name : "India"),
//        Country(id: 11, name : "Iran") ,
//        Country(id: 12, name : "Singapore"),
//        Country(id: 13, name : "Japan"),
//        Country(id: 14, name: "Kenya"),
//        Country(id: 15, name: "Madagascar"),
//        Country(id: 16, name: "Mexico"),
//        Country(id: 17, name: "Morocco"),
//        Country(id: 18, name: "New Zealand"),
//        Country(id: 19, name: "Papua New Guinea"),
//        Country(id: 20, name: "Russia"),
//        Country(id: 21, name: "South Korea"),
//        Country(id: 22, name: "Sweden"),
//        Country(id: 23, name: "Uganda"),
//        Country(id: 24, name: "Venezuela"),
//        Country(id: 25, name: "Fiji")
        
    ])
    
    var body: some View {
        NavigationView{
            VStack{
                Text(" Daily Journey")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach(archive.countries) {stato in
                            
                            if stato.id == 4 {
                                Cerchietto(zoom: true, day: stato.id)
                            } else {
                                Cerchietto(day: stato.id)
                            }
                        }
                        //ForEach
                    }
                    //Hstack
                }
                .padding(.bottom, 30)
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    VStack{
                        HStack{
                            ForEach(archive.countries) {stato in
                                VStack{
                                    Text(stato.name)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .padding()
                                    
                                    NavigationLink(destination: Carousel(stato: stato)){
                                        
                                                           ZStack {
                                        RoundedRectangle(cornerRadius: 25)
                                        Color.white
                                            .frame(width: 241, height: 292)
                                            .cornerRadius(25)
                                            .shadow(color: .gray, radius: 4 , x: -5, y: 13)
                                            .padding(1)
                                          
                                                Image(stato.name)
                                                    .resizable()
                                                    .frame(width: 241, height: 292, alignment: .center)
                                                          }
                                        
                                    }
                                    
                                    .padding()
                                    .offset(x: 15, y: -20)
                                }
                            }
                        }}
                    
                }
                .offset(y:30)
                
            }
            .padding(.bottom, 150) //Vstack
        }
        
        
        //body
        
    }  //view
    
}
struct ContentView_Previews1: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
