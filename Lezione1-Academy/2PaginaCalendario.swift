//
//  2PaginaCalendario.swift
//  Lezione1-Academy
//
//  Created by Antonio D'amore on 16/11/21.
//
import SwiftUI
struct CalendarView : View {
    var numbers : [Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]
    var countries = ["Japan", "Spain",""]
var body: some View {
    VStack{
        Text("Today Discover ")
            .font(.title)
            .fontWeight(.bold)
            .padding(.bottom, 10.0)
        
        ScrollView(.horizontal){
            HStack {
                ForEach(numbers,id:\.self) {country in
                    VStack{
                        ZStack{
                        Circle()
                            .fill(ColorManager.GREEN)
                            .frame(width: 34, height: 34)
    
                            Text("1")
                                .foregroundColor(Color.white)
                                
                        }//ZStack for numbers
                   
                        RoundedRectangle(cornerRadius: 44)
                            .fill(ColorManager.GREENL)
                            .frame(width: 63, height: 103)
                            .scaleEffect()
                    } //Vstack for calendar
                } //ForEach
                
               
            } //Hstack
            .mask(
                RoundedRectangle(cornerRadius: 44)
                    .foregroundColor(.black)
                    .scaleEffect()
            )
           
            
        }
        .padding(.bottom, 50)
        
        
    ScrollView(.horizontal){
        HStack{
            ForEach(countries, id:\.self) {country in
        Image(country)
        .resizable()
        .frame(width: 241, height: 292, alignment: .center)
        .clipShape(Capsule())
      
//            .background(Color.white)
//            .cornerRadius(5)
//            .statusBar(hidden: false)
//            .shadow(color: Color.gray ,radius:26, x:-5, y:13)
        
        
            }
        } //ForEach
            
    }//ForEach2
} //Vstack
    } //body

} //view
