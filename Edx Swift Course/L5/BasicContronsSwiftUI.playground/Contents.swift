import SwiftUI
import PlaygroundSupport

struct AToggle: View{
    @State var isToggled = false
    var offDescription: String
    var onDescription: String
    var body: some View{
        Toggle(isOn: $isToggled){
            if(isToggled){
                Text(onDescription)
            }
            else{
                Text(offDescription)
            }
        }
    }
}

struct MainView: View {
    var body: some View{
        VStack{
            Group{
                AToggle(offDescription: "Off 1", onDescription: "On 1")
                AToggle(offDescription: "Off 2", onDescription: "On 2")
            }
            Button(action: {
                print("Tapped")
            },
            label: {
                Text("I am a button!")
            })
        }
    }
}

PlaygroundPage.current.setLiveView(MainView() .padding(150))
