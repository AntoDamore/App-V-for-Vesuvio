import SwiftUI

struct CardListOne: View {
    var body: some View {
        VStack {
            ScrollView{
                Text("Tortilla de patatas")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(height: 20.0)
                
                Image("spain-fooddue")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 355, height: 408)
                    .padding(.top, 10.0)
                
                Text("Celebrated as national dish by Spaniards, Spanish tortilla is an essential part of the Spanish cuisine. It is an omelette made with eggs and potatoes, optionally including onion. It is often served at room temperature as a tapa. You’ll love it!")
                    .font(.body)
                    .padding(.horizontal)
                    .frame(width: 389.0, height: 203.0)
                
                Text("Recipe")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(width: 88.0, height: 20.0)
                
                Text("Ingredients: \n - 1 onion, thinly sliced \n - 3 potatoes, thinly sliced \n - 500 ml olive oil \n - 6 eggs \n - 1 pinch salt \n \nProcedure: \n \nHeat up the olive oil in a really hot pan. \nThinly slice the onion, then slice the potatoes into 3-millimeters thick pieces. Fry the vegetables in the olive oil over high heat for 10-15 minutes until they caramelize. Drain the vegetables and save the olive oil for later use. \nAdd 6 eggs to a bowl and whisk. Add the fried vegetables, stir, and leave to set for 15-20 minutes. \nIn a nonstick pan, fry the egg mixture over high heat for 1 minute, then reduce to a low heat for 2-4 minutes.")
                    .font(.body)
                    .padding(.horizontal)
                    .frame(width: 389.0)
            }
        }
    }
}

struct CardListTwo: View {
    var body: some View {
        VStack {
            ScrollView{
                Text("Tomatina")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(height: 20.0)
                
                Image("spain.festivaldue")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 355, height: 408)
                    .padding(.top, 60.0)
                
                Text("Literally the world's biggest food fight, with thousands of people who take to the streets of the tiny town of Buñol, near Valencia,  every year. The food of choice at La Tomatina is, unsurprisingly, tomatoes. \n Messy? Yes. Unforgettably fun? Also yes. \n\nThis crazy tradition started in 1945, when a disruption during a parade resulted in spectators and participants throwing tomatoes at each other.\n\nThe tradition caught on, and now every year on the last Wednesday in August, Buñol transforms from a village into party central.\n\nParticipants must purchase a ticket, which includes travel to Buñol from one of several larger cities, in order to participate.\n\nThe festivities kick off at 10.00 in the morning with the “palo jabón”, during which people climbing to the top of a greased pole with a piece of meat on top of it. Once the piece of meat is slapped off the pole, the start signal for the tomato fight is given.\n\n\n\n")
                    .font(.body)
                    .padding(.top, 60)
                    .frame(width: 389.0)
            }
        }
    }
}
struct CardListThree: View {
    var body: some View {
        VStack {
            ScrollView{
                Text("Palillos or Castanets")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                    .frame(height: 20.0)
                    
                Image("castanets")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 355, height: 408)
                    .padding(.top, 10.0)
                
                Text("Castanets, also known as clackers or palillos (chestnut; Spanish: castaño), consist of a pair of concave shells linked on one edge by a string. They are held in the hand and used to produce rhythmic accents with clicks. They are traditionally made of hardwood.")
                    .font(.body)
                    .padding(.horizontal)
                    .frame(width: 389.0, height: 203.0)
                
                Text("Shake to listen to the Palillos!")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(height: 20.0)
                    .onShake {
                        playAudio(songName: "palillos",songFormat: "mp3")
                    }
                Image("spain-musictre" )
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 300)
                    .padding(.top, 10.0)
                
            }
        }
    }
}

struct CardListFour: View {
    var body: some View {
        VStack {
            ScrollView{
                Text("La piel que abito")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(height: 20.0)
                
                Image("spain.cinemadue")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 355, height: 408)
                    .padding(.top, 10.0)
                
                Text("From the early successes of surrealist genius Luis Buñuel to the award-winning melodramas of Pedro Almodóvar, Spanish cinema has survived decades of indifference from the fascist Franco regime to emerge as the source of internationally successful, uniquely vibrant and challenging films. La piel que habito (The skin i live in) is one of this movies.\n")
                    .font(.body)
                    .padding(.horizontal)
                    .frame(width: 389.0, height: 203.0)
                
                Text("Plot")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(width: 88.0, height: 20.0)
                
                Text("In honor of his late wife who died in a flaming car accident, scientist, Dr. Robert Ledgard (Antonio Banderas), is trying to synthesize the perfect skin which can withstand burns, cuts or any other kind of damage.\n \nAs he gets closer to perfecting this skin on his flawless patient, the scientific community starts growing skeptical and his past is revealed that shows how his patient is closely linked to tragic events he would like to forget. \n \n\nWhat it provides is a glossy, smooth, luxurious version of the sorts of unspeakable things that occupied classified classic horror films involving mad scientists, body parts, twisted revenge, personal captives and hidden revenge. Usually such films are stylistically elevated enough that there's an irony involved, a camp humor. A strongly recommended movie to see.")
                    .font(.body)
                    .padding(.horizontal)
                    .frame(width: 389.0)
            }
        }
    }
}




