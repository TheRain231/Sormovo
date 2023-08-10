import SwiftUI

struct CustomTabBarContainerView<Content: View>: View {
    @EnvironmentObject private var vm: LocationsViewModel
    @Binding var selection: TabBarItem
    let content: Content
    let maxWidthForIpad: CGFloat = 700
    @State private var tabs: [TabBarItem] = []
    
    init (selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content){
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            content
                //.ignoresSafeArea()
            !vm.showLocationsList ? CustomTabBarView(tabs: tabs, selection: $selection)
                .padding(.vertical, 7)
                .frame(maxWidth: maxWidthForIpad)
                .frame(maxWidth: .infinity) : nil
        }
        
        
        .onPreferenceChange(TabBarItemsPreferenceKey.self) { value in
            self.tabs = value
        }
    }
}
