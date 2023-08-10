import SwiftUI

struct Article: Identifiable{
    let id = UUID().uuidString
    let title: String
    let titleImageName: String
    let page: any View
    let source: String
}
