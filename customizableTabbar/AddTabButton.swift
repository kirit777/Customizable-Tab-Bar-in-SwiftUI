
import SwiftUI

struct AddTabButton: View {
    var tab: TabItem
    @Binding var tabs: [TabItem]
    @Binding var availableTabs: [TabItem]

    var body: some View {
        Button(action: {
            withAnimation {
                if tabs.count >= 5 {
                    let removedTab = tabs.removeFirst()
                    availableTabs.append(removedTab)
                }
                tabs.insert(tab, at: tabs.count - 1)
                availableTabs.removeAll { $0.name == tab.name }
            }
        }) {
            VStack {
                Image(systemName: tab.icon)
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.black)
            }
        }
        .frame(width: 40, height: 40)
        .background(.white)
        .clipShape(Circle())
        .shadow(radius: 5)
    }
}

