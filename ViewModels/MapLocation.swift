import SwiftUI
import MapKit

final class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    var locationManager: CLLocationManager?
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self 
        } else { 
            print("Show an alert letting them know this is off and to go turn it on.")
        }
    }
    private func checkLocationAuthorization() { 
        guard let locationManager = locationManager else { return }
        switch locationManager.authorizationStatus {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted: 
            print("Your location is restricted likely due to parental controls.") 
        case .denied: 
            print("You have denied this app location permission. Go into settings to change it.") 
        case .authorizedAlways, .authorizedWhenInUse: 
            var a = 0
            a += 1
            //region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MapDetails.defaultSpan) 
        @unknown default: 
            break 
        }
    }
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}
