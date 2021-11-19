import SwiftUI

struct Cerchietto: View {
    @State var zoom = false
    @State var day:Int
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(zoom ? ColorManager.GREEN : ColorManager.GREENL)
                    .frame(width: zoom ? 56:34, height: 34)
                Text("\(day)")
                    .foregroundColor(Color.white)
                    
            } //ZStack for numbers
            
            RoundedRectangle(cornerRadius: 44)
                .fill(zoom ? ColorManager.GREEN : ColorManager.GREENL)
//                .frame(width: 63, height: 103)
                .frame(width: zoom ? 63:63, height: zoom ? 103:90)
                .scaleEffect()
                
            
            
        } //Vstack for calendar
    }
}
    
struct Cerchietto_Previews: PreviewProvider {
    static var previews: some View {
        Cerchietto(day: 1)
    }
}
