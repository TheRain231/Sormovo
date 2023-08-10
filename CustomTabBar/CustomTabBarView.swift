import SwiftUI

struct CustomTabBarView: View {
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    var body: some View {
        tabBarVersion2
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    static let tabs: [TabBarItem] = [
        .map, .home
    ]
    static var previews: some View {
        VStack{
            Spacer()
            CustomTabBarView(tabs: tabs, selection: .constant(tabs.first!))
        }
        
    }
}

extension CustomTabBarView{
    private func tabView(tab: TabBarItem) -> some View{
        VStack{
            VStack{
                Image(systemName: tab.iconName)
                    .font(.subheadline)
                Text(tab.title)
                    .font(.system(size: 10, weight: .semibold, design: .rounded))
            }
            .foregroundColor(selection == tab ? tab.color : Color.gray)
            .padding(.vertical, 8)
            .background(selection == tab ? tab.color.opacity(0.2) : Color.clear)
            .cornerRadius(10)
        }
    }
    
    private var tabBarVersion1: some View{
        HStack{
            ForEach(tabs, id: \.self){ tab in
                Button(action: {switchToTab(tab: tab)}, label: {
                   tabView(tab: tab)
                })
            }
        }
        .padding(6)
        .background(Color.white)
    }
    
    private func switchToTab(tab: TabBarItem){
        withAnimation(.easeInOut) { 
            selection = tab
        }
    }
}

extension CustomTabBarView{
    
    private func tabView2(tab: TabBarItem) -> some View{
        VStack{
            Image(systemName: tab.iconName)
                .font(.subheadline)
            Text(tab.title)
                .font(.system(size: 10, weight: .semibold, design: .rounded))
        }
        .foregroundColor(selection == tab ? tab.color : Color.gray)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(
            ZStack{
                if selection == tab{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(tab.color.opacity(0.2))
                }
            }
        )
        .cornerRadius(10)
        
    }
    private var tabBarVersion2: some View{
        HStack{
            ForEach(tabs, id: \.self){ tab in
                Button(action: {switchToTab(tab: tab)}, label: {
                    tabView2(tab: tab)
                })
            }
        }
        .padding(6)
        .background()
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
        .padding(.horizontal)
        //.offset(x:0, y:10)
    }
}
