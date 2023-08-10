import SwiftUI

struct LocationPreviewView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    var body: some View {
        HStack(alignment: .bottom){
            VStack(alignment: .leading, spacing: 16){
                imageSection
                titleSection
            }
            VStack(spacing: 8) {
                learnMoreButton
                nextButton
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.background)
                .offset(y: 50)
        )
        .cornerRadius(10)
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            LocationPreviewView(location: LocationsDataService.locations.first!)
                .padding()
        }
        .environmentObject(LocationsViewModel())
    }
}
extension LocationPreviewView{
    private var imageSection: some View{
        Button{
            vm.sheetLocation = location
        } label: {
            ZStack{
                if let imageName = location.imageNames.first {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                }
            }
        }
        .padding(6)
        .background()
        .cornerRadius(10)
    }
    private var titleSection: some View{
        VStack(alignment: .leading, spacing: 4){
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    private var learnMoreButton: some View{
        Button{
            vm.sheetLocation = location
        } label: {
            Text("Узнать больше")
                .font(.headline)
                .frame(width: 125, height: 35)
        }.buttonStyle(.borderedProminent)
    }
    private var nextButton: some View{
        Button{
            vm.nextButtonPressed()
        } label: {
            Text("Дальше")
                .font(.headline)
                .frame(width: 125, height: 35)
        }.buttonStyle(.bordered)
    }
}
