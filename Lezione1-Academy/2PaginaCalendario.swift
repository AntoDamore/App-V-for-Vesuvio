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
            }//Hstack
//            .mask(
//                RoundedRectangle(cornerRadius: 44)
//                    .frame(width: 63, height:150 , alignment: .top)
//                    .opacity(1) )
           
            
        }
        .padding(.bottom, 50)
        
        
    ScrollView(.horizontal){
        VStack{
           
        HStack{
            ForEach(countries,id:\.self ) {country in
                VStack{
                    
                    Text("come si mettono i nomi?")
        Image(country)
        .resizable()
        .frame(width: 241, height: 292, alignment: .center)
        
      
//            .background(Color.white)
       .cornerRadius(5)
//            .statusBar(hidden: false)
//            .shadow(color: Color.gray ,radius:26, x:-5, y:13)
        
                }
            }
        }
        }
            
    }
    .offset(y:30)
    }
    .padding(.bottom, 160) //Vstack
    } //body

} //view
