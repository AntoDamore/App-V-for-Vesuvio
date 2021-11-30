

import SwiftUI

struct CardViewOne: View {
    @State var stato : Country
    var body: some View {
        NavigationLink(destination: CardListOne(stato: stato )) {
            ZStack(alignment: .bottomLeading) {
                VStack{
                    Text("Food")
                        .font(.title)
                        .foregroundColor(Color.black).bold()
                    
                    Image("\(stato.name).food")
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
    @State var stato : Country

    var body: some View {
        NavigationLink(destination: CardListTwo(stato : stato )) {
            ZStack(alignment: .bottomLeading) {
                VStack{
                    Text("Festival")
                        .font(.title)
                        .foregroundColor(Color.black).bold()
                    
                    Image("\(stato.name).festival")
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
    @State var stato : Country

    var body: some View {
        NavigationLink(destination: CardListThree(stato : stato)) {
            ZStack(alignment: .bottomLeading) {
                VStack{
                    Text("Music")
                        .font(.title)
                        .foregroundColor(Color.black).bold()
                    
                    Image("\(stato.name).music")
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
    @State var stato : Country

    var body: some View {
        NavigationLink(destination: CardListFour(stato : stato)) {
            ZStack(alignment: .bottomLeading) {
                VStack{
                    Text("Cinema")
                        .font(.title)
                        .foregroundColor(Color.black).bold()
                    
                    Image("\(stato.name).cinema")
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



