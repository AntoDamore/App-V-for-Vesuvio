import SwiftUI

struct Cerchietto: View {
    @State var zoom = false
    @State var day:Int
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(zoom ? ColorManager.GREEN : ColorManager.GREENL)
                    .frame(width: zoom ? 46:34, height: 24)
                
                Text("\(day)")
                    .foregroundColor(Color.white)
                
            }
            //ZStack for numbers
            ZStack{
                RoundedRectangle(cornerRadius: 44)
                    .fill(zoom ? ColorManager.GREEN : ColorManager.GREENL)
                    .frame(width: zoom ? 63:63, height: zoom ? 103:103)
                    .scaleEffect()
                
                if day == 4 {
                    Circle()
                        .fill(zoom ? Color.orange : Color.orange)
                        .frame(width: 37, height: 37)
                        .offset(x: 0, y: -12)
                    
//                    Circle()
//                        .fill(zoom ? Color.yellow : Color.yellow)
//                        .frame(width: 20, height: 20)
//                    .offset(x: 0, y: 25)
                    
                }
              
                if day == 1 {
//mettere qui 
                    Circle()
                        .fill(zoom ? Color.orange : Color.orange)
                        .frame(width: 37, height: 37)
                        .offset(x: 0, y: -12)
                    
                    Circle()
                        .fill(zoom ? Color.yellow : Color.yellow)
                        .frame(width: 20, height: 20)
                    .offset(x: 0, y: 25)

                   
                        
                    
                }
                if day == 3 {
                    Circle()
                        .fill(zoom ? Color.orange : Color.orange)
                        .frame(width: 37, height: 37)
                        .offset(x: 0, y: -12)
                    
                    Circle()
                        .fill(zoom ? Color.yellow : Color.yellow)
                        .frame(width: 20, height: 20)
                    .offset(x: 0, y: 25)
                 
                }
                if day == 2 {
                    Circle()
                        .fill(zoom ? Color.orange : Color.orange)
                        .frame(width: 37, height: 37)
                        .offset(x: 0, y: -12)
                    
                    Circle()
                        .fill(zoom ? Color.yellow : Color.yellow)
                        .frame(width: 20, height: 20)
                    .offset(x: 0, y: 25)
                 
                }
            }
        
            
        }
        .offset(x:15)//Vstack for calendar
    }
}

