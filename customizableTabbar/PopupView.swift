

import SwiftUI

struct PopupView: View {
    @Binding var showPopup: Bool
    @Binding var availableTabs: [TabItem]
    @Binding var tabs: [TabItem]

    var body: some View {
        ZStack (alignment: .top){
            Color.black.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    withAnimation {
                        showPopup = false
                    }
                }

            VStack(spacing: 15) {
                HStack{
                    Spacer()
                    Button(action: {
                        withAnimation {
                            showPopup = false
                        }
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .frame(width: 24,height: 24)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                    .scaleEffect(showPopup ? 1.2 : 1)
                    .animation(.easeInOut, value: showPopup)
                }
                .padding(.horizontal , 20)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(availableTabs) { tab in
                            AddTabButton(tab: tab, tabs: $tabs, availableTabs: $availableTabs)
                                .transition(.scale)
                        }
                    }
                    .padding()
                }
                .padding(.horizontal , 20)
            }
            .frame( height: 180)
            .cornerRadius(15)
            .shadow(radius: 1)
            .scaleEffect(showPopup ? 1.0 : 0.9)
            .rotationEffect(.degrees(showPopup ? 0 : 15))
            .animation(.spring(), value: showPopup)
        }
        .frame( height: 180)
    }
}
