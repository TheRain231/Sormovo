import SwiftUI
import MapKit


struct LocationsView: View {
    @StateObject private var position = ContentViewModel()
    @EnvironmentObject private var vm: LocationsViewModel
    let maxWidthForIpad: CGFloat = 700
    @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 56.3568, longitude: 43.86536), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
                .onAppear{
                    position.checkIfLocationServicesIsEnabled()
                }
            VStack(spacing: 0){
                header
                    .padding()
                    .frame(maxWidth: maxWidthForIpad)
                Spacer()
                if (!vm.showLocationsList){
                    locationPreviewStack
                        .offset(y: -60)
                }
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
    }
}

extension LocationsView {
    private var header: some View {
        HStack(alignment: .top){
            VStack{
                Button{
                    if vm.showLocationsList{
                        UIApplication.shared.dismissKeyboard()
                    }
                    withAnimation(.easeInOut) { 
                        vm.showLocationsList.toggle()
                    }
                } label: {
                    SearchView()
                }
                vm.showLocationsList ? LocationsListView() : nil
            }
            .background()
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 1)
            vm.showLocationsList ? CloseButton() : nil
        }
        }
    private var mapLayer: some View{
        Map(coordinateRegion: $vm.mapRegion, showsUserLocation: true, annotationItems: vm.locations, annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView(imageName: location.imageNames.first!)
                    .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        })
    }
    private var locationPreviewStack: some View{
        ZStack{
            ForEach(vm.locations){ location in
                if vm.mapLocation == location{
                    LocationPreviewView(location: location)
                        .shadow(color: .black.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                }
            }
        }
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(.indigo)
        .cornerRadius(10, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
    }
}

