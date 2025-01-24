

import SwiftUI

struct TabItemView: View {
    var tab: TabItem
    @Binding var selectedTab: Int
    @Binding var tabs: [TabItem]

    var body: some View {
        Label(tab.name, systemImage: tab.icon)
            .foregroundColor(.primary)
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color(UIColor.secondarySystemBackground)))
            .scaleEffect(selectedTab == tabs.firstIndex(of: tab) ? 1.2 : 1)
            .rotationEffect(.degrees(selectedTab == tabs.firstIndex(of: tab) ? 10 : 0))
            .onTapGesture {
                // Action when tab is tapped (if needed)
            }
            .animation(.easeInOut, value: selectedTab)
    }
}
