

import SwiftUI

struct CardViewOne: View {
    var body: some View {
        NavigationLink(destination: CardListOne()) {
            ZStack(alignment: .bottomLeading) {
                VStack{
                    Text("Food")
                        .font(.title)
                        .foregroundColor(Color.black).bold()
                    
                    Image("spain-food")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 219.4, height: 383)
                        .shadow(radius: 10 )
                        .scaledToFit()
                        .shadow(radius: 10 )
                    
                }
            }.offset(x: 0, y: -90)
        }
        
    }
}

struct CardViewTwo: View {
    var body: some View {
        NavigationLink(destination: CardListTwo()) {
            ZStack(alignment: .bottomLeading) {
                VStack{
                    Text("Festival")
                        .font(.title)
                        .foregroundColor(Color.black).bold()
                    
                    Image("spain-festival")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 219.4, height: 383)
                        .shadow(radius: 10 )
                        .scaledToFit()
                        .shadow(radius: 10 )
                }
            }.offset(x: 0, y: -90)
        }
        
    }
}

struct CardViewThree: View {
    var body: some View {
        NavigationLink(destination: CardListThree()) {
            ZStack(alignment: .bottomLeading) {
                VStack{
                    Text("Music")
                        .font(.title)
                        .foregroundColor(Color.black).bold()
                    
                    Image("spain-music")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 219.4, height: 383)
                        .shadow(radius: 10 )
                        .scaledToFit()
                        .shadow(radius: 10 )
                }
            }.offset(x: 0, y: -90)
        }
    }
}
struct CardViewFour: View {
    var body: some View {
        NavigationLink(destination: CardListFour()) {
            ZStack(alignment: .bottomLeading) {
                VStack{
                    Text("Cinema")
                        .font(.title)
                        .foregroundColor(Color.black).bold()
                    
                    Image("spain-cinema")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 219.4, height: 383)
                        .shadow(radius: 10 )
                        .scaledToFit()
                        .shadow(radius: 10 )
                }
            }            .offset(x: 0, y: -113)
        }
    }
}



