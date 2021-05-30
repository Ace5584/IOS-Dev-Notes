import SwiftUI
import PlaygroundSupport

struct Name {
    var firstName: String = ""
    var lastName: String = ""
}

struct NameRow: View{
    var name: Name
    var body: some View {
        HStack{
            Text(name.firstName)
            Text(name.lastName).bold()
            Spacer()
        }
    }
}

struct NameView: View {
    var body: some View {
        Group{
            NameRow(name: Name(firstName: "Alex", lastName: "Lai"))
            NameRow(name: Name(firstName: "Tristan", lastName: "Reed"))
        }
    }
}

PlaygroundPage.current.setLiveView(NameView().padding(200))
