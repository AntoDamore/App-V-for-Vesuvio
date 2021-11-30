
import Foundation
import SwiftUI

 
class Countries : ObservableObject {
    
 @Published var countries = [Country]()
    
    init (countries : [Country]) {
        self.countries = countries
        
    }
}
struct food {
    var title : String
    var descrption : String
    var recipe : String
}
struct festival {
    var title : String
    var descrption : String
  
}
struct music {
    var title : String
    var descrption : String

}
struct cinema {
    var title : String
    var descrption : String
  
}

struct Country : Identifiable {
    var id: Int
    let name : String
    var food : food
    var festival : festival
    var music : music
    var cinema : cinema
}


var pizza = food(title: "pizza", descrption: "fattel", recipe: "1 2 3")
var sanremo = festival (title: "festival ", descrption: "vsfnvlkaslvnn")
var pinogiordano = music (title: "dssaa", descrption: "dsaffsas")
var paolosorrentino = cinema (title: "sdmnasds ", descrption: "nsdbnsbkvnbasdnkb ")

var italia = Country (id: 1, name: "Italia", food: pizza, festival: sanremo, music: pinogiordano , cinema: paolosorrentino  )



