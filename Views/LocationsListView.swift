import SwiftUI

struct LocationsListView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    var body: some View {
        List(vm.locations) { location in
                if location.name.lowercased().contains(vm.searchText.lowercased()) || vm.searchText == ""{
                    Button {
                        vm.showNextLocation(location: location)
                        UIApplication.shared.dismissKeyboard()
                    } label: {
                        HStack{
                            if let imageName = location.imageNames.first {
                                Image(imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 45, height: 45)
                                    .cornerRadius(10)
                            }
                            VStack(alignment: .leading) {
                                Text(location.name)
                                    .font(.headline)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    .padding(.vertical, 4)
                    .listRowBackground(Color.clear)
            }
        }.listStyle(PlainListStyle())
    }
}
