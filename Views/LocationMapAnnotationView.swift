import SwiftUI

struct LocationMapAnnotationView: View {
    
    let imageName: String
    
    var body: some View {
        VStack(spacing: 0){
            Circle()
                .overlay{
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(36)
                        .padding(5)
                }
                .foregroundColor(.white)
                .frame(width: 70, height: 70)
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 12, height: 12)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -2)
                .padding(.bottom, 35)
        }
    }
}

struct LocationMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            LocationMapAnnotationView(imageName: "")
        }
    }
}
