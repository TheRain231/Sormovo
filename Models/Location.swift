import SwiftUI
import MapKit

struct Location: Identifiable, Equatable {
    let id = UUID().uuidString
    let name: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let address: String
    let timeOfWork: String
    
    //Equatable
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
