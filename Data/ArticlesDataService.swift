import SwiftUI

class ArticlesDataService{
    static let Articles = [
        Article(title: "Благоустройство Юбилейного бульвара", 
                titleImageName: "Ubileyny",
                page: Ubileyny(),
                source: "gipernn.ru"),
        Article(title: "Проект Сормовского метро", 
                titleImageName: "Metro",
                page: Metro(),
                source: "gipernn.ru")
               
    ]
}

struct Metro: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView{
            Image("SormMetro")
                .resizable()
                .scaledToFill()
                .cornerRadius(10)
                .padding(.horizontal)
                .overlay(
                    Button{
                        dismiss()
                    }label: {
                        Image(systemName: "xmark")
                            .font(.headline)
                            .padding()
                            .foregroundColor(.primary)
                            .background(.thickMaterial)
                            .cornerRadius(10)
                            .shadow(radius: 4)
                            .padding(30)
                    }
                    , alignment: .topLeading)
            Text("Жители Сормовского района Нижнего Новгорода испытывают множество неудобств из-за территориальной отдаленности от центра города. Из всех рассматриваемых вариантов улучшения транспортной доступности Сормова эксперты признали наиболее целесообразным продление подземки от станции «Буревестник» до станции «Сормовская» с созданием транспортно-пересадочного узла. К слову, в правительстве обсуждался вариант продления метро от станции метро «Сормовская» до Починок, но расходы на реализацию проекта составили бы более 40 миллиардов рублей. Из-за высокой затратности от данного предложения было решено отказаться, отдав предпочтение строительству 13 километров трамвайных путей от станции «Сормовская» до 7-го микрорайона. В таком случае финансирование составит порядка 4 миллиардов рублей.")
                .fontWeight(.medium)
                .padding()
            Text("Реализация проекта позволит замкнуть пригородное сообщение и обеспечит возможность пересадки на метро, а 7-й микрорайон будет полностью охвачен сообщением с дальнейшей возможностью перемещения пассажиров на Московский вокзал, — пояснил Сергей Морозов.")
                .fontWeight(.light)
                .padding(20)
            Text("Источник: gipernn.ru")
                .fontWeight(.thin)
                .padding()
        }
    }
}

struct Ubileyny: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView{
                Image("Ubileyny")
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(10)
                    .padding()
                    .overlay(
                        Button{
                            dismiss()
                        }label: {
                            Image(systemName: "xmark")
                                .font(.headline)
                                .padding()
                                .foregroundColor(.primary)
                                .background(.thickMaterial)
                                .cornerRadius(10)
                                .shadow(radius: 4)
                                .padding(30)
                        }
                        , alignment: .topLeading)
            Text("Благоустройство бульвара Юбилейного завершилось в Сормовском районе Нижнего Новгорода. В течение четырех месяцев на территории меняли дорожное покрытие и освещение, ставили скамьи и урны, высаживали зелень. По просьбе местных жителей на бульваре оборудовали дорожку для велосипедистов. Специальные зоны появились для рыбаков, маленькие нижегородцы смогут проводить здесь время на новых качелях. Также в Сормовском районе завершилось обновление сквера на бульваре Юбилейном и озелененной территории под названием «Сосны». Как отметил мэр столицы Приволжья Юрий Шалабаев, работы на всех площадках выполнены качественно.")
                .fontWeight(.medium)
                .padding(.horizontal)
            Text("Пространства, благоустроенные в Сормове, все получились очень хорошие, все абсолютно разные, потому что в каждом микрорайоне у жителей были свои пожелания. В ходе обсуждений проектов они их высказывают, а мы постарались максимально, по возможности, их учесть, — подчеркнул Юрий Шалабаев")
                .fontWeight(.light)
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
            Text("Источник: gipernn.ru")
                .fontWeight(.thin)
                .padding(5)
        }
    }
}

struct Ubileyny_Previews: PreviewProvider {
    static var previews: some View {
        Ubileyny()
    }
}
