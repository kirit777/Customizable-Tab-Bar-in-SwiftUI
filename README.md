# Customizable-Tab-Bar-in-SwiftUI
A fully customizable tab bar solution for iOS applications built with SwiftUI. This component allows users to dynamically add and remove tabs from a list, providing a flexible and user-friendly navigation experience. Each tab can be customized with a title, icon, and view, making this component ideal for apps that need adaptable navigation options.


# CustomTab - Customizable Tab Bar in SwiftUI

## Overview

**CustomTab** is a SwiftUI-based solution for a customizable and dynamic tab bar. Users can add and remove tabs from a list to customize the navigation of their app. It’s an ideal solution for apps that need a flexible and user-configurable navigation bar.

## Features

- Dynamically add tabs from a list.
- Customize each tab with a title and icon.
- Easy integration with any SwiftUI-based iOS app.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/customtab-swiftui.git
   ```

2. Open the project in Xcode.

3. Add the `TabBarView` and `TabItem` components to your project.

## How to Use

### 1. Add Tabs to the Tab Bar:

In your SwiftUI view, add the `TabBarView` component like this:

```swift
import SwiftUI

struct ContentView: View {
    @State private var tabs: [TabItem] = [
        TabItem(name: "Home", icon: "house"),
        TabItem(name: "Search", icon: "magnifyingglass"),
        TabItem(name: "Plus", icon: "plus.circle") // Special tab for adding more tabs
    ]
    
    @State private var availableTabs: [TabItem] = [
        TabItem(name: "Notifications", icon: "bell"),
        TabItem(name: "Downloads", icon: "arrow.down"),
        TabItem(name: "Profile", icon: "person"),
        TabItem(name: "Settings", icon: "gear"),
        TabItem(name: "Favorites", icon: "heart"),
        TabItem(name: "Messages", icon: "message")
    ]
    
    var body: some View {
        TabBarView(tabs: $tabs, availableTabs: $availableTabs)
    }
}
```

### 2. Customize the Tabs:

Each tab item in the `tabs` array consists of a `name` and an `icon`:

```swift
struct TabItem {
    let name: String
    let icon: String
}
```

The `TabBarView` component allows users to add tabs by selecting from the `availableTabs` list. When the user taps the "+" button in the tab bar, a pop-up with available tabs will appear for selection.

### 3. Handle Tab Selection:

The `TabBarView` will display each tab and navigate to the respective view when selected. It is set up to allow the user to add more tabs dynamically and remove them if necessary.

## result



https://github.com/user-attachments/assets/d6906263-0753-430e-908b-f818bb91e231



## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
