//


import SwiftUI

struct TabViewContent: View {
    var tab: TabItem
    @Binding var selectedTab: Int
    @Binding var tabs: [TabItem]

    var body: some View {
        Text("\(tab.name) View")
            .font(.title2)
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(UIColor.systemBackground))
            .tabItem {
                TabItemView(tab: tab, selectedTab: $selectedTab, tabs: $tabs)
            }
            .animation(.spring(), value: selectedTab)
    }
}
