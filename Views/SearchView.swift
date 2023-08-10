import SwiftUI

struct SearchView: View {
    
    @EnvironmentObject var vm: LocationsViewModel
    
    var body: some View {
        HStack {
            TextField("Поиск", text: $vm.searchText) { startedSearching in
                if startedSearching {
                    vm.showLocationsList = true
                }
            } onCommit: {
                vm.showLocationsList = false
                UIApplication.shared.dismissKeyboard()
            }
            .font(.bold(.title)())
            //.foregroundColor(.primary)
            .overlay(alignment: .leading) { 
                Image(systemName: "list.bullet")
                    .font(.title3)
                    .foregroundColor(.blue.opacity(0.5))
                    .background{
                        RoundedRectangle(cornerSize: CGSize(width: 3, height: 3))
                            .foregroundColor(.accentColor.opacity(0.1))
                            .scaleEffect(2)
                    }
                    .padding(.leading, 5)
            }
        }
        .frame(height: 20)
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct CloseButton: View {
    @EnvironmentObject var vm: LocationsViewModel
    var body: some View {
        Button{
            vm.searchText = ""
            withAnimation(.spring()){
                vm.showLocationsList = false
                UIApplication.shared.dismissKeyboard()
            }
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 1)
        } 
    }
}

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
