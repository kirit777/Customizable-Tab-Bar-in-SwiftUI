

import SwiftUI

struct TabBarView: View {
    @State private var tabs: [TabItem] = [
        TabItem(name: "Home", icon: "house"),
        TabItem(name: "Search", icon: "magnifyingglass"),
        TabItem(name: "Plus", icon: "plus.circle")
    ]

    @State private var availableTabs: [TabItem] = [
        TabItem(name: "Notifications", icon: "bell"),
        TabItem(name: "Downloads", icon: "arrow.down"),
        TabItem(name: "Profile", icon: "person"),
        TabItem(name: "Settings", icon: "gear"),
        TabItem(name: "Favorites", icon: "heart"),
        TabItem(name: "Messages", icon: "message")
    ]

    @State private var selectedTab = 0
    @State private var showPopup = false

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TabView(selection: $selectedTab) {
                        ForEach(tabs) { tab in
                            TabViewContent(tab: tab, selectedTab: $selectedTab, tabs: $tabs)
                                .tag(tabs.firstIndex(of: tab) ?? 0)
                                .onChange(of: selectedTab) { _ in
                                    if selectedTab == tabs.count - 1 {
                                        withAnimation {
                                            showPopup = true
                                            selectedTab = 0
                                        }
                                    }
                                }
                        }
                    }
                }

                if showPopup {
                    PopupView(showPopup: $showPopup, availableTabs: $availableTabs, tabs: $tabs)
                        .transition(.opacity)
                }
            }
            .navigationTitle("Tabs")
        }
    }
}

struct TabItem: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let icon: String
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
