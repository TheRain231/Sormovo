import SwiftUI

struct HomePage: View {
    var colNum = 1
    var body: some View{
        NavigationView {
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 300))]){
                    NavigationLink{
                        ScrollView{
                            Image("Sormovo")
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(10)
                                .padding(.horizontal)
                            Text("По документам известно, что владельцем Марьино (старое название Сормова) был бортник Терентий Шуменев по прозвищу Сорома. По одной версии происхождение названия связывают с судебной тяжбой за починок (Починок, вновь возникшее сельское поселение), которую вел Терентий Шуменев с соседом Капасом Хабальщиковым.\nВ этом географическом названии есть свой смысл. У Сормова Волга действительно образует перекат, существовавший с древности, удобный брод для переправы татарской конницы с правого на левый берег реки. «Лесные пространства были заселены только по южным окраинам – по раменям - вдоль левого берега Волги да отчасти по берегам ее притоков... По этим рекам изредка стояли деревушки, верст на двадцать одна от другой. Тамошний люд жил как отрезанный от остального крещеного мира...» (П. И. Мельников-Печерский «В лесах»).\nПочинок Соромов рос и развивался, но медленно. По ревизии 1794 года население его составляло всего 686 человек.\nМощным толчком к развитию этого района послужило основание в 1849 году знаменитого Сормовского завода. Он стал одним из крупнейших в России производителем паровозов, вагонов, речных и морских судов. По тому времени он был оснащен сравнительно передовой техникой. Предприятие, расположенное вблизи слияния двух великих рек, на перекрестке важнейших торговых путей, рядом с имеющей международное значение Нижегородской ярмаркой и городом, по праву называемым «карманом России», быстро росло и развивалось, постепенно превращаясь в промышленный гигант. \nДо октября 1917 года Сормово входило в состав Козинской волости. После постановления уездной земской управы создается Сормовская волость. Затем постановлением 1922 года создается Сормовский уездный центр - село, а потом и город Сормово. В 1924 году в связи с укрупнением создается Сормовский рабочий район, а в 1928 году постановлением президиума исполкома губернского Совета Сормово входит в состав Нижнего Новгорода. В последующие сорок лет район претерпел еще несколько административно-территориальных изменений.")
                                .fontWeight(.medium)
                                .padding()
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: .infinity, height: 70)
                        }
                    } label: {
                        VStack{
                            Image("Sormovo")
                                .resizable()
                                .scaledToFill()
                            Text("Статья")
                                .bold()
                                .foregroundColor(Color(red: 0.8,
                                                       green: 0.8, 
                                                       blue: 0.8))
                                .frame(maxWidth:.infinity, alignment: .leading)
                                .padding(.horizontal)
                                .padding(.bottom, 0.2)
                            Text("История Сормовского района")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title2)
                                .frame(maxWidth: 300, alignment: .leading)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .padding(.bottom)
                        }
                        .background(
                            LinearGradient(gradient: Gradient(colors: [
                                Color(red: 0.7, green: 0.8, blue: 0.9),
                                Color(red: 0.1, green: 0.6, blue: 0.8)
                            ]), startPoint: .center, endPoint: .bottom)
                            .edgesIgnoringSafeArea(.all)
                        )
                        
                        .cornerRadius(30)
                        .padding()
                        .shadow(radius: 10)
                    }
                    NavigationLink{
                        ScrollView{
                            Image("Zavod-1")
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(10)
                                .padding(.horizontal)
                            Text("21 июля 1849 года компания «Нижегородская машинная фабрика и Волжско-Камское буксирное и завозное пароходство» купила у балахнинской помещицы Крюковой земельный участок на берегу Волги между деревнями Сормово и Мышьяковка. Уже в 1850 году было спущено на воду первое судно - деревянный колёсный пароход «Ласточка». В 1860 году разразился экономический кризис и разорившаяся компания продает завод промышленнику Дмитрию Бенардаки. Как \"Завод Бенардаки\" Сормовский завод и был известен до национализации большевиками. \n4 февраля 1872 года было организовано акционерное общество «Сормово». На заводе действуют 48 цехов и семь технических бюро. Благодаря успехам и эффективности, завод получает крупные оборонные заказы от правительства.\nС 1898 года на заводе начинается производство паровозов.\nВ 1920 году на заводе были построены первые в России танки.\nВо время войны заводу было вручено переходящее Красное Знамя Государственного Комитета Обороны. Своим трудом работники удерживали это знамя 33 месяца подряд. Это единственный подобный случай за всю историю Великой Отечественной войны.\nС 23 февраля 1930 года началось производство подводных лодок.\nСреди произведенных лодок была С-13 капитана Маринеско, потопившая транспорт \"Вильгельм Густлофф\".\nПосле войны, в связи с развитием технологий и военно-технической конкуренции с Америкой, а также полученным в Германии в результате поражения последней технологиям и оборудованию, темпы строительства подводного флота еще более возросли.\nВсего на предприятии построено 275 боевых подводных лодок, в их числе 26 атомных.\nВ 1933 году завод одним из первых в стране перешел на цельносварные корпуса.\nНа заводе начал свою деятельность известный конструктор скоростных судов и экранопланов Ростислав Алексеев.\nГражданское судостроение возобновлено 27 мая 1947 года закладкой теплохода «Большая Волга», затем строились сухогрузы, танкеры, буксиры, паромы. Разработаны и построены флагманы волжского пассажирского флота, дизель-электроходы «Ленин» и «Советский Союз».\n В 1955 году на «Красном Сормове» была создана первая в СССР промышленная установка непрерывной разливки стали.\nВ августе 1957 года спущено на воду первое пассажирское судно на подводных крыльях «Ракета-1». Позже строились скоростные суда как для рек, так и для морей — «Чайка», «Метеор», «Буревестник», «Комета» и другие. Лидирующие позиции в области разработки судов на подводных крыльях (на то время) принесли заводу мировую славу и известность.")
                                .fontWeight(.medium)
                                .padding()
                            Text("Источник: nnov.fandom.com")
                                .fontWeight(.thin)
                                .padding()
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: .infinity, height: 70)
                        }
                    } label: {
                        VStack{
                            Image("Zavod-1")
                                .resizable()
                                .scaledToFill()
                            Text("Статья")
                                .bold()
                                .foregroundColor(Color(red: 0.8,
                                                       green: 0.8, 
                                                       blue: 0.8))
                                .frame(maxWidth:.infinity, alignment: .leading)
                                .padding(.horizontal)
                                .padding(.bottom, 0.2)
                            Text("История завода \"Красное Сорсово\"")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title2)
                                .frame(maxWidth: 300, alignment: .leading)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .padding(.bottom)
                        }
                        .background(
                            LinearGradient(gradient: Gradient(colors: [
                                Color(red: 0.2, green: 0.5, blue: 0.6),
                                Color(red: 0.1, green: 0.6, blue: 0.6)
                            ]), startPoint: .center, endPoint: .bottom)
                            .edgesIgnoringSafeArea(.all)
                        )
                        .cornerRadius(30)
                        .padding()
                        .shadow(radius: 10)
                    }
                    NavigationLink{
                        ScrollView{
                            Image("Ubileyny")
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(10)
                                .padding(.horizontal)
                            Text("Благоустройство бульвара Юбилейного завершилось в Сормовском районе Нижнего Новгорода. В течение четырех месяцев на территории меняли дорожное покрытие и освещение, ставили скамьи и урны, высаживали зелень. По просьбе местных жителей на бульваре оборудовали дорожку для велосипедистов. Специальные зоны появились для рыбаков, маленькие нижегородцы смогут проводить здесь время на новых качелях. Также в Сормовском районе завершилось обновление сквера на бульваре Юбилейном и озелененной территории под названием «Сосны». Как отметил мэр столицы Приволжья Юрий Шалабаев, работы на всех площадках выполнены качественно.")
                                .fontWeight(.medium)
                                .padding()
                            Text("Пространства, благоустроенные в Сормове, все получились очень хорошие, все абсолютно разные, потому что в каждом микрорайоне у жителей были свои пожелания. В ходе обсуждений проектов они их высказывают, а мы постарались максимально, по возможности, их учесть, — подчеркнул Юрий Шалабаев")
                                .fontWeight(.light)
                                .padding(20)
                            Text("Источник: gipernn.ru")
                                .fontWeight(.thin)
                                .padding()
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: .infinity, height: 70)
                        }
                    } label: {
                        VStack{
                            Image("800")
                                .resizable()
                                .scaledToFill()
                            Text("Статья")
                                .bold()
                                .foregroundColor(Color(red: 0.8,
                                                       green: 0.8, 
                                                       blue: 0.8))
                                .frame(maxWidth:.infinity, alignment: .leading)
                                .padding(.horizontal)
                                .padding(.bottom, 0.2)
                            Text("Благоустройство Юбилейного бульвара")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title2)
                                .frame(maxWidth: 300, alignment: .leading)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .padding(.bottom)
                        }
                        .background(
                            LinearGradient(gradient: Gradient(colors: [
                                Color(red: 0.3, green: 0.22, blue: 0.8),
                                Color(red: 0.6, green: 0.6, blue: 0.9)
                            ]), startPoint: .center, endPoint: .bottom)
                            .edgesIgnoringSafeArea(.all)
                        )
                        .cornerRadius(30)
                        .padding()
                        .shadow(radius: 10)
                    }
                    NavigationLink{
                        ScrollView{
                            Image("SormMetro")
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(10)
                                .padding(.horizontal)
                            Text("Жители Сормовского района Нижнего Новгорода испытывают множество неудобств из-за территориальной отдаленности от центра города. Из всех рассматриваемых вариантов улучшения транспортной доступности Сормова эксперты признали наиболее целесообразным продление подземки от станции «Буревестник» до станции «Сормовская» с созданием транспортно-пересадочного узла. К слову, в правительстве обсуждался вариант продления метро от станции метро «Сормовская» до Починок, но расходы на реализацию проекта составили бы более 40 миллиардов рублей. Из-за высокой затратности от данного предложения было решено отказаться, отдав предпочтение строительству 13 километров трамвайных путей от станции «Сормовская» до 7-го микрорайона. В таком случае финансирование составит порядка 4 миллиардов рублей.")
                                .fontWeight(.medium)
                                .padding()
                            Text("Реализация проекта позволит замкнуть пригородное сообщение и обеспечит возможность пересадки на метро, а 7-й микрорайон будет полностью охвачен сообщением с дальнейшей возможностью перемещения пассажиров на Московский вокзал, — пояснил Сергей Морозов.")
                                .fontWeight(.light)
                                .padding(20)
                            Text("Источник: gipernn.ru")
                                .fontWeight(.thin)
                                .padding()
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: .infinity, height: 70)
                        }
                    } label: {
                        VStack{
                            Image("Metro")
                                .resizable()
                                .scaledToFit()
                            Text("Статья")
                                .bold()
                                .foregroundColor(Color(red: 0.8,
                                                       green: 0.8, 
                                                       blue: 0.8))
                                .frame(maxWidth:.infinity, alignment: .leading)
                                .padding(.horizontal)
                                .padding(.bottom, 0.2)
                            Text("Проект Сормовского метро")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title2)
                                .frame(maxWidth: 290, alignment: .leading)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .padding(.bottom)
                        }
                        .background(
                            LinearGradient(gradient: Gradient(colors: [
                                Color(red: 240/255, green: 20/255, blue: 20/255),
                                Color(red: 0.9, green: 0.3, blue: 0.3)
                            ]), startPoint: .top, endPoint: .bottom)
                            .edgesIgnoringSafeArea(.all)
                        )
                        .cornerRadius(30)
                        .padding()
                        .shadow(radius: 10)
                    }
                    NavigationLink{
                        ScrollView{
                            Image("Kominterna")
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(10)
                                .padding(.horizontal)
                            Text("В Нижнем Новгороде завершилось благоустройство пешеходного бульвара на улице Коминтерна. Оно охватило территорию между жилым домом № 168 и кинотеатром «Буревестник» в Сормовском районе. В ходе работ на пешеходной зоне обустроили велосипедную и прогулочные дорожки, заменили опоры освещения, установили урны и скамьи. Территорию дополнили озеленением, разбили газоны и украсили цветочными клумбами. Кроме того, здесь появился арт-объект в виде колоса: его установили возле киоска с пирогами, известным среди местных жителей.")
                                .fontWeight(.medium)
                                .padding(15)
                            Text("Место проходное: рядом множество магазинов, жилые дома, а также проезжая часть и остановки общественного транспорта, поэтому при разработке проекта ставили задачу создать комфортное пространство для многочисленных пешеходов и местных жителей, — отметил Юрий Шалабаев.")
                                .fontWeight(.light)
                                .padding(.horizontal, 20)
                            Text("По итогам благоустройства в центре Сормова сформировалось единое городское пространство, предназначенное для комфортного отдыха и прогулок. Помимо зоны на Коминтерна в его состав вошли территория районного центра, сквер на Юбилейном и сам бульвар, площадь Буревестника, а также озелененные локации по улицам Никиты Рыбакова и Культуры.")
                                .fontWeight(.medium)
                                .padding(13)
                            Text("Источник: gipernn.ru")
                                .fontWeight(.thin)
                                .padding()
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: .infinity, height: 70)
                        }
                    } label: {
                        VStack{
                            Image("Kominterna")
                                .resizable()
                                .scaledToFill()
                            Text("Статья")
                                .bold()
                                .foregroundColor(Color(red: 0.8,
                                                       green: 0.8, 
                                                       blue: 0.8))
                                .frame(maxWidth:.infinity, alignment: .leading)
                                .padding(.horizontal)
                                .padding(.bottom, 0.2)
                            Text("Благоустройство ул. Коминтерна")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title2)
                                .frame(maxWidth: 300, alignment: .leading)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .padding(.bottom)
                        }
                        .background(
                            LinearGradient(gradient: Gradient(colors: [
                                .orange,
                                Color(red: 0.2, green: 0.6, blue: 0.3)
                            ]), startPoint: .top, endPoint: .bottom)
                            .edgesIgnoringSafeArea(.all)
                        )
                        .cornerRadius(30)
                        .padding()
                        .shadow(radius: 10)
                    }
                    NavigationLink{
                        RouteView()
                    } label: {
                        VStack{
                            Image("Meteor")
                                .resizable()
                                .scaledToFill()
                            Text("Маршрут")
                                .bold()
                                .foregroundColor(Color(red: 0.8,
                                                       green: 0.8, 
                                                       blue: 0.8))
                                .frame(maxWidth:.infinity, alignment: .leading)
                                .padding(.horizontal)
                                .padding(.bottom, 0.2)
                            Text("Прогулка по Центру Сормова")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title2)
                                .frame(maxWidth: 300, alignment: .leading)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .padding(.bottom)
                        }
                        .background(
                            LinearGradient(gradient: Gradient(colors: [
                                Color(red: 200/255, green: 37/255, blue: 37/255),
                                Color(red: 0.9, green: 0.6, blue: 0.2)
                            ]), startPoint: .top, endPoint: .bottom)
                            .edgesIgnoringSafeArea(.all)
                        )
                        .cornerRadius(30)
                        .padding()
                        .shadow(radius: 10)
                    }
                }
                Text("© Андрей Степанов, 2023")
                    .foregroundColor(.secondary)
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(height: 70)
            }
            .navigationTitle("Дополнительно")
        }
        .navigationViewStyle(.stack)
    }
} 
