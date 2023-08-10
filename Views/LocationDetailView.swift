import SwiftUI
import MapKit
import AVFoundation

struct LocationDetailView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    @State private var isPlaying = false
    let location: Location
    let speechSyntheizer = AVSpeechSynthesizer()
    var body: some View {
        GeometryReader{ proxy in
            ScrollView(showsIndicators: false) {
                VStack{
                    TabView{
                        ForEach(location.imageNames, id: \.self){
                            Image($0)
                                .resizable()
                                .scaledToFill()
                                .frame(width: proxy.size.width)
                                .clipped()
                        }
                    }
                    .aspectRatio(1.2, contentMode: .fit)
                    .tabViewStyle(.page)
                    .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 5)
                    VStack(alignment: .leading, spacing: 16) { 
                        Text(location.name)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                        Divider()
                        VStack(alignment: .leading, spacing: 8) { 
                            Text(location.description)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        Button{
                            if isPlaying{
                                speechSyntheizer.stopSpeaking(at: .immediate)
                                isPlaying = false
                            } else {
                                let utterance = AVSpeechUtterance(string: location.description)
                                utterance.pitchMultiplier = 1.0
                                utterance.rate = 0.5
                                utterance.voice = AVSpeechSynthesisVoice(language: "ru-RU")
                                speechSyntheizer.speak(utterance)
                                isPlaying = true
                            }
                        }label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: .infinity, height: 50)
                                    .padding()
                                Text(isPlaying ? "Остановить" : "Прослушать информацию")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                            }
                        }
                        Divider()
                        Text("Адрес: " + location.address)
                            .font(.subheadline)
                        Divider()
                        Text("Часы работы: " + location.timeOfWork)
                            .font(.subheadline)
                        Divider()
                        Map(coordinateRegion: .constant(MKCoordinateRegion(
                            center: location.coordinates,
                            span: MKCoordinateSpan(latitudeDelta: 0.008, longitudeDelta: 0.008))),
                            annotationItems: [location]) {location in
                            MapAnnotation(coordinate: location.coordinates) { 
                                LocationMapAnnotationView(imageName: location.imageNames.first!)
                            }
                        }
                            .allowsHitTesting(false)
                            .aspectRatio(1, contentMode: .fit)
                            .cornerRadius(30)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    Rectangle()
                        .frame(width: .infinity, height: 10)
                        .foregroundColor(.clear)
                }
            }
            .ignoresSafeArea()
            .background(.ultraThinMaterial)
            .overlay(
                Button{
                    vm.sheetLocation = nil
                }label: {
                    Image(systemName: "xmark")
                        .font(.headline)
                        .padding(16)
                        .foregroundColor(.primary)
                        .background(.thickMaterial)
                        .cornerRadius(10)
                        .shadow(radius: 4)
                        .padding()
                }
                , alignment: .topLeading)
        }
        
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationsDataService.locations.first!)
            .environmentObject(LocationsViewModel())
    }
}
