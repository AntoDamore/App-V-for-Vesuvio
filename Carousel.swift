import SwiftUI

struct Carousel: View {
@State var stato : Country
    
    var body: some View {
      
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
  
            GeometryReader { geometry in
                ImageCarouselView(numberOfImages: 1) {
                    CardViewOne(stato : stato)
                    
                }
            }
                    .frame(width: 250, height: 700)
                   
                GeometryReader { geometry in
                    ImageCarouselView(numberOfImages: 1) {
                        CardViewTwo(stato : stato)
                        
                    }
                }.frame(width: 250, height: 700)
                   
                
                GeometryReader { geometry in
                    ImageCarouselView(numberOfImages: 1) {
                        CardViewThree(stato : stato)
                        
                    }
                } .frame(width: 250, height: 700)
                    
                GeometryReader { geometry in
                    ImageCarouselView(numberOfImages: 1) {
                        CardViewFour(stato : stato)
                        
                    }
                }.frame(width: 250, height: 700)
                    .offset( y: 20)
            }.padding(.leading)
        }
}
}






struct ImageCarouselView<Content: View>: View {
    private var numberOfImages: Int
    private var content: Content
 
    @State private var currentIndex: Int = 0
     
   
 
    init(numberOfImages: Int, @ViewBuilder content: () -> Content) {
        self.numberOfImages = numberOfImages
        self.content = content()
    }
 
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                self.content
            }
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
            .offset(x: CGFloat(self.currentIndex) * -geometry.size.width, y: 0)
            .animation(.spring())
            
        }
    }
}


