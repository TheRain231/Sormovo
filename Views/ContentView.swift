import SwiftUI

struct ContentView: View { 
    
    @State private var selection = "map"
    @State private var tabSelection: TabBarItem = .map
    
    var body: some View{
        CustomTabBarContainerView(selection: $tabSelection){
            LocationsView()
                .tabBarItem(tab: .map, selection: $tabSelection)
            HomePage()
                .tabBarItem(tab: .home, selection: $tabSelection)
        }
    }
}
