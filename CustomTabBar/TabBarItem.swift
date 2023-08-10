import SwiftUI

enum TabBarItem: Hashable{
    case map, home
    
    var iconName: String{
        switch self{
        case .home: return "doc.plaintext"
        case .map: return "map"
        }
    }
    
    var title: String{
        switch self{
        case .home: return "Дополнительно"
        case .map: return "Карта"
        }
    }
    
    var color: Color{
        switch self{
        case .home: return Color.red
        case .map: return Color.accentColor
        }
    }
}
