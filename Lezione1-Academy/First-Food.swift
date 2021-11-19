//
//  Information.swift
//  Lezione1-Academy
//
//  Created by Antonio D'amore on 17/11/21.
//
import SwiftUI

struct firstFood: View {
  var body: some View {
      VStack {
          ScrollView{
      Text("Tortilla de patatas")
        .font(.headline)
        .fontWeight(.bold)
        .frame(width: 150.0, height: 20.0)
        
          Image( uiImage: UIImage (named:"spain-fooddue.png" )! )
              .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 355, height: 408)
              .padding(.top, 10.0)
              
              Text("Celebrated as national dish by Spaniards, Spanish tortilla is an essential part of the Spanish cuisine. It is an omelette made with eggs and potatoes, optionally including onion. It is often served at room temperature as a tapa. You’ll love it!")
                  .font(.body)
                  
                  .padding(.horizontal)
                  .frame(width: 389.0, height: 203.0)
    }
  }
  }
}

struct Spain_Food_Previews: PreviewProvider {
    static var previews: some View {
        firstFood()
    }
}
