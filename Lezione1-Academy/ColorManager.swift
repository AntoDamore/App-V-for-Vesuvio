//
//  ColorManager.swift
//  Lezione1-Academy
//
//  Created by Antonio D'amore on 15/11/21.
//

// ColorManager.swift created by Brady Murphy
import SwiftUI

struct ColorManager {
    // create static variables for custom colors
    static let ORANGE = Color("ORANGE")

    //... add the rest of your colors here
}

// Or you can use an extension
// this will allow you to just type .spotifyGreen and you wont have to use ColorManager.spotifyGreen
extension Color {
    static let ORANGE = Color("ORANGE")
 
    // ... add the rest of your colors here
}
