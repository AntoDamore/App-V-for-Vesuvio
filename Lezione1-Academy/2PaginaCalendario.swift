//
//  2PaginaCalendario.swift
//  Lezione1-Academy
//
//  Created by Antonio D'amore on 16/11/21.
//
import SwiftUI
struct CalendarView : View {
  var numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]
    
    @State  var countries = [
        Country(id: 1, name: "Italy" ),
        Country(id: 2, name : "Australia"),
        Country(id: 3, name : "Singapore"),
        Country(id: 4, name : "Spain"),
        Country(id: 5, name : "Brazil"),
        Country(id: 6, name : "Chile"),
        Country(id: 7, name : "China"),
        Country(id: 8, name : "Cyprus"),
        Country(id: 9, name : "Iceland"),
        Country(id: 10, name : "India"),
        Country(id: 11, name : "Iran") ,
        Country(id: 12, name : "Singapore"),
        Country(id: 13, name : "Japan"),
        Country(id: 14, name: "Kenya"),
        Country(id: 15, name: "Madagascar"),
        Country(id: 16, name: "Mexico"),
        Country(id: 17, name: "Morocco"),
        Country(id: 18, name: "New Zealand"),
        Country(id: 19, name: "Papua New Guinea"),
        Country(id: 20, name: "Russia"),
        Country(id: 21, name: "South Korea"),
        Country(id: 22, name: "Sweden"),
        Country(id: 23, name: "Uganda"),
        Country(id: 24, name: "Venezuela"),
        Country(id: 25, name: "Fiji")
        
    ]
    
    struct Country : Identifiable {
        var id: Int
        let name : String
        
    }
    
    var n = 25
    
    var body: some View {
        NavigationView{
            VStack {
                Text(" Daily Journey")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    
                    
                
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach(numbers, id:\.self) { day in
                           
                            if day == 4 {
                                Cerchietto(zoom: true, day: day)
                            } else {
                                Cerchietto(day: day)
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
                            ForEach(countries) {country in
                                VStack{
                                    Text(country.name)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .padding()
                                    
                                    NavigationLink(destination: ImageCarousel()){
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 25)
                                            Color.white
                                                .frame(width: 241, height: 292)
                                                .cornerRadius(25)
                                                .shadow(color: .gray, radius: 4 , x: -5, y: 13)
                                                .padding(1)
                                            
                                            
                                            Image(country.name)
                                                .resizable()
                                                .frame(width: 241, height: 292, alignment: .center)
                                            
                                        }
                                    } .padding()
                                        .offset(x: 15, y: -20)
                                }
                            }
                        }}
                    
                }
                .offset(y:30)
                
            }
            .padding(.bottom, 150) //Vstack
        } //body
        
    }//view
    
}
