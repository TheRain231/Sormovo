import SwiftUI
import AVFoundation

struct RouteView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    @State var rating = 0
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Text("Вы можете совершить небольшую увлекательную прогулку по центру Сормова и осмотреть его основные достопримечательности.\nПредлагаем вам следущий маршрут:")
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding(10)
                Image("Route")
                    .resizable()
                    .cornerRadius(10)
                    .scaledToFill()
                    .padding()
                Text("20 минут")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 10)
                Divider()
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 300))]){
                    sheetButton(text: "1. Начало нашего маршрута - любимый лицей №82", image: "Licey", position: 10)
                    sheetButton(text: "2. Следующей точкой нашего маршрута будет памятник Д. Е. Бенардаки", image: "Benardaki", position: 14)
                    sheetButton(text: "3. Напротив памятника мы можем увидеть один из красивейших домов города - дом стахановцев завода \"Красное Сормово\"", image: "Stahanovci-1", position: 4)
                    sheetButton(text: "4. Рядом с остановкой можно найти необычный памятник \"пятаку\"", image: "Pjatak", position: 23)
                    sheetButton(text: "5. Поворачиваем направо и видим дом с интересным оформлением в виде ананасов", image: "Ananas-1", position: 3)
                    sheetButton(text: "6. Доходим до памятиника знаменитому конструктору", image: "Alekssev", position: 17)
                    sheetButton(text: "7. Проходим Юбилейный бульвар и нам открывается прекрасный вид на \"Метеор\"", image: "Meteor", position: 16)
                    sheetButton(text: "8. За метеором находится площадь Буревестника", image: "Square1", position: 19)
                    sheetButton(text: "9. Неподалеку находится вход в знаменитый Сормовский парк", image: "SormPark", position: 22)
                    sheetButton(text: "10. Сразу как мы доходим до набережной парка, открывается вид на стадион Труд", image: "Trud", position: 25)
                }
                Divider()
                Text("Оцените маршрут")
                    .font(.system(size: 15,weight: .medium))
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 10)
                RatingView(rating: $rating)
                    .padding(10)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: .infinity, height: 70)
            }
        }
        //Одним из известных мест в нашем городе является Центр Сормова (нет) всем привет. как ваши дела. сегодня я расскажу и покажу главные достопримечательности центра Сормова. желаю вам удачи и интересных мыслей, которые будут посещать вас в течение прослушивания моего проекта. центр сормова — одна из главных достопримечательностей Нижнего Новгорода, которую ежегодно посещает огромное количество туристов. это любимое место отдыха всех нижегородцев. особенно привлекают своей красотой определенные места. я создал маршрут по главным из них и сегодня расскажу про них 😁 короче все, всех люблю, всех целую. пусть все ваши мечты сбудутся, мечты осуществятся, а планы реализуются. всем пока. спасибо за внимание.
    }
}

extension RouteView{
    func sheetButton(text: String, image: String, position: Int) -> some View{
        Button{
            vm.sheetLocation = LocationsDataService.locations[position]
        } label: {
            ZStack(alignment: .top){
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10, antialiased: true)
                    .padding()
                LinearGradient(gradient: Gradient(colors: [
                    Color(red: 0, green: 0, blue: 0).opacity(0.5),
                    Color(red: 1, green: 1, blue: 1).opacity(0)
                ]), startPoint: .top, endPoint: .center)
                .cornerRadius(10, antialiased: true)
                .padding()
                Text(text)
                    .font(.system(size: 15, weight: .heavy))
                    .foregroundColor(.white)
                    .padding(20)
            }
            .cornerRadius(25, antialiased: true)
            .padding(.horizontal, 10)
            .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
                LocationDetailView(location: location)
                    .foregroundColor(.primary)
            }
        }
    }
}

struct RatingView: View {
    @Binding var rating: Int
    
    var label = ""
    
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: number)
                    .font(.system(size: 30))
                    .foregroundColor(number > rating ? offColor : onColor)
                    .onTapGesture {
                        withAnimation(.easeInOut) { 
                            rating = number
                        }
                        
                    }
            }
        }
    }
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

struct RouteView_Previews: PreviewProvider {
    static var previews: some View {
        RouteView()
        .environmentObject(LocationsViewModel())
    }
}
