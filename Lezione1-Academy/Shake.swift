import SwiftUI
import CoreFoundation
import AVFoundation
import CoreText
import Foundation

var audioPlayer: AVAudioPlayer?
var audioFile: String = "palillos"

func playAudio(songName: String, songFormat: String) {
    if let path = Bundle.main.path(forResource: audioFile, ofType: songFormat) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Error")
        }
    }
}

extension UIDevice {
    static let deviceDidShakeNotification = Notification.Name(rawValue: "deviceDidShakeNotification")
}

extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            NotificationCenter.default.post(name: UIDevice.deviceDidShakeNotification, object: nil)
        }
    }
}

extension View {
    func onShake(perform action: @escaping () -> Void) -> some View {
        self.modifier(DeviceShakeViewModifier(action: action))
    }
}

struct DeviceShakeViewModifier: ViewModifier {
    let action: () -> Void
    
    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.deviceDidShakeNotification)) { _ in
                action()
            }
    }
}

struct Card1: View {
    var body: some View {
        VStack(alignment: .center, spacing: 18) {
            ScrollView{
                Text("Palillos or Castanets")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(height: 20.0)
                
                Image("castanets")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 281, height: 410)
                    .padding(.top, 10.0)
                
                Text("Castanets, also known as clackers or palillos (chestnut; Spanish: castaño), consist of a pair of concave shells linked on one edge by a string. They are held in the hand and used to produce rhythmic accents with clicks. They are traditionally made of hardwood.")
                    .font(.body)
                    .padding(.all)
                    .frame(width: 389.0, height: 203.0)
                
                Text("Shake to listen to the Palillos!")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.all)
                    .frame(height: 20.0)
                    .onShake {
                        playAudio(songName: "palillos", songFormat: "mp3")
                    }
                Image("spain-musictre")
                    .resizable()
                    
                    .frame(width: 281, height: 410)
                    .padding(.top, 10.0)
                
            }
        }
        
    }
}

struct ContentPreviews: PreviewProvider {
    static var previews: some View {
        Card1()
    }
}
