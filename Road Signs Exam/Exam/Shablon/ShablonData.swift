//
//  ShablonData.swift
//  We Learn Professions
//
//  Created by Umidjon Burhonov on 19/07/22.
//
import UIKit

struct Question {
    let titleImage: String
    let taskLabel : String
    let choose1   : String
    let choose2   : String
    let choose3   : String
    let answer    : String
}
struct QuestionData{
    var questionNumber = 0
    var score          = 0
    var numberOfQuiz   = 0
    var isFinish = false
    var dataOfQuiz: [Question] = []
    
    var aQuiz = [
        Question(titleImage: "sha1", taskLabel: "Qaysi avtomobil uchun bu belgilarning ta'sir oralig'ida to'xtashga ruxsat etiladi?", choose1: "Qizilga", choose2: "\("Nogiron") taniqlik belgisi bo'lgan sariq avtomobilga", choose3: "Ikkala avtomobilga", answer: "\("Nogiron") taniqlik belgisi bo'lgan sariq avtomobilga"),
        Question(titleImage: "sha2", taskLabel: "Qaysi yo'naltirgichlar bo'ylab harakatlanishga ruxsat etiladi?", choose1: "Fagat A va G yo'nalishlari bo'ylab", choose2: "Faqat B yo`nalish bo`ylab", choose3: "Faqar A yo`nalish bo`ylab", answer: "Fagat A va G yo'nalishlari bo'ylab"),
        Question(titleImage: "default", taskLabel: "Tibbiyot qutichasi va o't o'chirgichi bo'lmagan qanday transport vositalaridan foydalanish taqiglanadi?", choose1: "Fagat M2, M3; N1 toifali transport vositasi", choose2: "Fagat N2; N3 toifali transport vositasi", choose3: "Barcha yugorida ko'rsatilgan toifalar", answer: "Barcha yugorida ko'rsatilgan toifalar"),
        Question(titleImage: "sha4", taskLabel: "Qaysi avtomobil chorrahadan birinchi bo'lib o'tadi?", choose1: "Qizil avtomobil", choose2: "Yashil avtomobil", choose3: "Sariq avtomobil", answer: "Yashil avtomobil"),
        Question(titleImage: "sha5", taskLabel: "Qaysi avtomobillarga harakatlanish tagiglangan?", choose1: "Ko'k, yashil va og avtomobillarga", choose2: "Qizil va og avtomobillarga", choose3: "Og, ko'k va sariq avtomobillarga", answer: "Ko'k, yashil va og avtomobillarga"),
        Question(titleImage: "sha6", taskLabel: "Qaysi transport vositasining haydovchisi chorrahadan birinchi bo'lib o'tadi?", choose1: "Tramvay haydovchisi", choose2: "Avtomobil va avtobus haydovchisi", choose3: "Avtobus haydovchisi", answer: "Avtomobil va avtobus haydovchisi"),
        Question(titleImage: "sha7", taskLabel: "Shu joyda to'xtab turishga ruxsat etiladimi?", choose1: "Taqiqlanadi", choose2: "\("Nogiron") taniqli belgisi bo`lsa ruxsat etiladi", choose3: "Ruxsat etiladi", answer: "Ruxsat etiladi"),
        Question(titleImage: "default", taskLabel: "Haydovchi harakatlanishni boshlashdan oldin ganday amallarni bajarishi kerak?", choose1: "Transport vositasining sozligini va to'la jihozlanganligini tekshirishi", choose2: "Tegishli yo'nalishdagi burilishning yorug'lik ko'rsatkichi bilan ishora berishi", choose3: "Harakatlanish boshlanishi xavfsiz bo'lishiga va harakatning boshqa ishtirokchilariga xalaqit bermasligiga ishonch hosil qilishi", answer: "Harakatlanish boshlanishi xavfsiz bo'lishiga va harakatning boshqa ishtirokchilariga xalaqit bermasligiga ishonch hosil qilishi"),
        Question(titleImage: "default", taskLabel: "Umurtga pog'onasining ko'krak sohasi shikastlangan jabrlanuvchini transportda ganday tashish kerak?", choose1: "Qattiq taxtada orgasi bilan yotgan holda", choose2: "Yumshoq to'shamada orqasi bilan yotgan holda", choose3: "Qattig taxtada yoni bilan votgan holda", answer: "Qattiq taxtada orgasi bilan yotgan holda"),
        Question(titleImage: "sha10", taskLabel: "Bunday taniqlik belgisi bilan belgilanadigan transport vositasi: ", choose1: "Og'ir vaznli va yirik o'lchamli yuklarni tashuvchi", choose2: "Uzunligi yuk bilan yoki yuksiz 20 metrdan ortiq bo'lgan transport vositasi", choose3: "Furgon yukxonasida odamlarni tashuvchi", answer: "Uzunligi yuk bilan yoki yuksiz 20 metrdan ortiq bo'lgan transport vositasi")
    ]
    var bQuiz = [
    Question(titleImage: "default", taskLabel: "Yogilgan zarg'aldoq rangli yalt-yalt etuvchi chiroq-mayoqcha harakatlanish uchun imtiyoz beradimi?", choose1: "Xa", choose2: "Yo`q", choose3: "Vaziyatga qarab", answer: "Yo`q"),
    Question(titleImage: "shb2", taskLabel: "Quyidagi belgilar qaysi yo'nalishda harakatlanishga ruxsat beradi?", choose1: "Fagat chapga", choose2: "Faqat o`nnga", choose3: "To'g'riga, o'ngga va qayrilishga", answer: "To'g'riga, o'ngga va qayrilishga"),
    Question(titleImage: "shb3", taskLabel: "Mazkur chizig nima haqida ogohlantiradi?", choose1: "«To'xtamasdan harakatlanish taqiqlangan> belgisi bilan birga qo'llanilganda, haydovchini «To'xtash» chizig'iga yaqinlashayotganligini", choose2: "Transport vositalarining majburiy to'xtash joyiga yaqinlashayotganligini", choose3: "Transport vositasi pivodalarga yo' berishi kerak bo'lgan joyni ko'rsatadi", answer: "«To'xtamasdan harakatlanish taqiqlangan> belgisi bilan birga qo'llanilganda, haydovchini «To'xtash» chizig'iga yaqinlashayotganligini"),
    Question(titleImage: "default", taskLabel: "Avtomagistralda quyidagilar tagiglanadi: ", choose1: "«To'xtab turish joyi» yoki «Dam olish joyi» belgilari bo'lgan maxsus maydonchalardan tashaari joyda to'xtash", choose2: "Qayrilib olish va airatuvchi bolakning texnologik uzilish joylariga kirish", choose3: "Yuqoridagi barcha holatlar", answer: "Yuqoridagi barcha holatlar"),
    Question(titleImage: "shb5", taskLabel: "Qaysi transport vositasi haydovchisi to'g'riga harakatlanish huquqiga ega?", choose1: "Yengil avtomobil haydovchisi", choose2: "Yengil va yuk avtomobillari haydovchilari", choose3: "Avtobus va mototsikl haydovchilari", answer: "Yengil avtomobil haydovchisi"),
    Question(titleImage: "shb6", taskLabel: "Qaysi transport vositasining haydovchisi yo'l berish kerak?", choose1: "Tramvay haydovchisi", choose2: "Avtomobil haydovchisi", choose3: "Ikkalasi bir vaqtda", answer: "Tramvay haydovchisi"),
    Question(titleImage: "default", taskLabel: "Transport vositasini orqaga harakatlantirish paytida haydovchi qanday talablarni bajarishi kerak?", choose1: "Boshqa shaxslar yordamidan foydalanish", choose2: "Transport vositasida tumanga garshi orqa chiroglar bo'lsa,ularni yoqish", choose3: "Harakatning boshga ishtirokchilariga xalaqit bermaslik.Harakat xavfsizligini ta'minlash uchun zarur bo'lsa, boshqa shaxslar yordamidan foydalanish", answer: "Harakatning boshga ishtirokchilariga xalaqit bermaslik.Harakat xavfsizligini ta'minlash uchun zarur bo'lsa, boshqa shaxslar yordamidan foydalanish"),
    Question(titleImage: "default", taskLabel: "Yo'lning qarama-qarshi harakat yo'nalishi tomoniga chiqish qachon taqiqlanadi?", choose1: "Ikki tomonlama harakatli, 4 ta yoki undan ko'p bo'lakli yo'llarda", choose2: "Ikki tomonlama harakatli, qarama-qarshi yo'nalishdagi transport vositalari oqimlari ikkita uzluksiz chiziqlar bilan ajratilgan 4 ta bo'lakli yo'llarda", choose3: "Yuqoridagi barcha hollarda", answer: "Yuqoridagi barcha hollarda"),
    Question(titleImage: "default", taskLabel: "Qaysi holatda egri yo'lda harakatlanayotgan avtomobil turg'unligi ta'minlanadi?", choose1: "Uzatma ulangan holatda", choose2: "Uzatma ajratilgan holatda", choose3: "Tezlik oshirilganda", answer: "Uzatma ulangan holatda"),
    Question(titleImage: "default", taskLabel: "Qaysi transport vositalaridan foydalanish taqiqlanadi?", choose1: "Kompressor pnevmatik tormoz tizimida o'rnatilgan bosimni ta'minlay olmagan holatda", choose2: "Gidravlik tormoz tizimidan suyuqlik oqayotgan bo'lsa", choose3: "Ko'rsatilgan barcha holatlarda", answer: "Ko'rsatilgan barcha holatlarda")
    
    ]
    var cQuiz = [
    Question(titleImage: "default", taskLabel: "Haydovchi o'z harakati yo'nalishidan qat'iy nazar kimga transport vositasini taqdim etishi kerak?", choose1: "Tibbiyot xodimlariga zudlik bilan tibbiy yordamga muxtoj bo'lgan fuqarolarni davolash-profilaktika muassasasiga olib borish uchun.", choose2: "Yong`in xavfsizligi xodimlariga,agar o`zlarining transport vositalari buzilgan bo`lsa.", choose3: "Yo' xizmati xodimlariga", answer: "Tibbiyot xodimlariga zudlik bilan tibbiy yordamga muxtoj bo'lgan fuqarolarni davolash-profilaktika muassasasiga olib borish uchun."),
    Question(titleImage: "shc2", taskLabel: "Qaysi yo'nalishlarda harakatlanishga ruxsat etilgan?", choose1: "Fagat B", choose2: "A, B, V va G", choose3: "A va B", answer: "A va B"),
    Question(titleImage: "shc3", taskLabel: "Qaysi belgi qarama-qarshi harakatlanishning ustunligini bildiradi?", choose1: "1", choose2: "4", choose3: "2", answer: "2"),
    Question(titleImage: "shc4", taskLabel: "Qaysi belgi qoidalarning aholi punktlarida harakatlanish tartibini belgilaydigan talablari bekor qilinishini ko'rsatadi?", choose1: "4", choose2: "3", choose3: "5", answer: "4"),
    Question(titleImage: "shc5", taskLabel: "O'ngga burilganda shu belgi bilan belgilangan bo'lakka o'tishga ruxsat etiladimi?", choose1: "Ruxsat etiladi", choose2: "Agar bo'lak qolgan harakat qismidan yotiq uzluksiz chiziq bilan ajratilmagan bo'lsa, ruxsat etiladi", choose3: "Tagialanadi", answer: "Agar bo'lak qolgan harakat qismidan yotiq uzluksiz chiziq bilan ajratilmagan bo'lsa, ruxsat etiladi"),
    Question(titleImage: "shc6", taskLabel: "Transport vositalari chorrahadan quyidagi tartibda o'tadilar:", choose1: "Yengil avtomobil, tramvay va avtobus", choose2: "Tramvay, yengil avtomobil, avtobus", choose3: "Tramvay va avtobus, yengil avtomobil", answer: "Yengil avtomobil, tramvay va avtobus"),
    Question(titleImage: "default", taskLabel: "Avtomobilning qaysi g' ildiraklari <<sirpanib>> tormozlanishga ko'proq moyil?", choose1: "Oldingi g'ildiraklar", choose2: "Orqa g'ildiraklar", choose3: "Ikkalasi ham bir xilda moyillik", answer: "Orqa g'ildiraklar"),
    Question(titleImage: "default", taskLabel: "Qaysi transport vositalarini qatnov qismining chetida ikki qator qo'yish mumkin?", choose1: "Kajavali mototsikllar", choose2: "Kajavasiz mototsikllar, mopedlar va velosipedlar", choose3: "«Nogiron» taniqlik belgisi bo'lgan yengil avtomobillar", answer: "Kajavasiz mototsikllar, mopedlar va velosipedlar"),
    Question(titleImage: "default", taskLabel: "Qo'l jarohatlanganda kiyim qanday tartibda kiydiriladi?", choose1: "Kivim avval jarohatlangan qo'lga, so'ngra sog'iga kiydiriladi", choose2: "Kiyim ikkala qo'lga baravar kiydiriladi", choose3: "Kiyim avval sog' qo'lga, so'ngra jarohatlangan qo'lga kiydiriladi", answer: "Kivim avval jarohatlangan qo'lga, so'ngra sog'iga kiydiriladi"),
    Question(titleImage: "default", taskLabel: "Yuk transport vositasiga shunday joylashtirilishi kerakki, u:", choose1: "Yukxona devorlaridan baland chiqmasligi kerak", choose2: "Transport vositasining orqa o'lchamidan 0,8 metrdan ortiq chiqib turmasligi kerak", choose3: "Shovqin hosil gilmasligi, chang ko'tarmasligi va atrof-muhitni ifloslantirmasligi kerak", answer: "Shovqin hosil gilmasligi, chang ko'tarmasligi va atrof-muhitni ifloslantirmasligi kerak" )
    ]
    var dQuiz = [
    Question(titleImage: "shd1", taskLabel: "Mazkur yo'l belgisi nimani bildiradi?", choose1: "Yo'lning trotuar yoki piyodalar yo'lkasi bo'lgan qismini", choose2: "Bolalar bor xududni", choose3: "Yo'lning piyodalar o'tish joy bo'lgan qismini", answer: "Yo'lning piyodalar o'tish joy bo'lgan qismini"),
    Question(titleImage: "shd2", taskLabel: "Qaysi transport vositalariga to'xtab turishga ruxsat etilgan?", choose1: "Fagat mototsiklga", choose2: "Yengil avtomobil va mototsiklga", choose3: "Barca transport vositalariga", answer: "Yengil avtomobil va mototsiklga"),
    Question(titleImage: "shd3", taskLabel: "Ushbu yo'l belgisi nima haqida ogohlantiradi?", choose1: "Shlagbaum bilan jihozlanmagan bir izli temir yo`l kesishmasi borligidan", choose2: "Bir izli temir yo'l kesishmasiga yaqinlashayotganligi haqida", choose3: "Shlagbaum bilan jihozlanmagan ikki izli temir vo'l kesishmasi borligidan", answer: "Shlagbaum bilan jihozlanmagan bir izli temir yo`l kesishmasi borligidan"),
    Question(titleImage: "shd4", taskLabel: "Yashil avtomobil chorrahadan nechinchi bo'lib o'tadi?", choose1: "Birinchi", choose2: "Ikkinchi", choose3: "Ikkalasi teng o`tadi", answer: "Ikkinchi"),
    Question(titleImage: "shd5", taskLabel: "Qaysi transport vositasiga harakatlanish ruxsat etiladi?", choose1: "Avtobusga", choose2: "Yengil avtomobilga", choose3: "Yuk avtomobilga", answer: "Yengil avtomobilga"),
    Question(titleImage: "shd6", taskLabel: "Qaysi transport vositasining haydovchisi yo'l berishi kerak?", choose1: "Motosikl haydovchisi", choose2: "Avtomobil haydovchisi", choose3: "Ikkalasi bir vaqtda.", answer: "Avtomobil haydovchisi"),
    Question(titleImage: "default", taskLabel: "Harakat ikki tomonlama bo'lgan, uch bo'lakli yo'lda Siz o'ngga burilishingiz zarur. Ushbu harakatni qaysi bo'lakdan amalga oshirasiz?", choose1: "O'ng bo'lakdan", choose2: "O'rta bo'lakdan", choose3: "O'rta bo'lakdan, lekin faqat o'ng bo'lak band bo'lganda", answer: "O'ng bo'lakdan"),
    Question(titleImage: "default", taskLabel: "Qaysi joylarda transport vositalariga qatnov qismining chetiga burchak ostida to'xtab turishga ruxsat etiladi?", choose1: "Yo'lning qatnov qismi kengaygan joylarda boshga yo'l harakati qatnashchilariga xalaqit bermaslik sharti bilan", choose2: "Har bir yo'nalishda uchta va undan ko'p bo'lagi bo'lgan yo'llarda", choose3: "Har bir yo'nalishda ikkitadan bo'lagi bo'lgan yo'llarda", answer: "Yo'lning qatnov qismi kengaygan joylarda boshga yo'l harakati qatnashchilariga xalaqit bermaslik sharti bilan"),
    Question(titleImage: "default", taskLabel: "Suyak singanda qotirib bog'lash uchun nimadan shina sifatida foydalanish eng qulay?", choose1: "Bint", choose2: "Gazmol", choose3: "Taxta bo'lagi", answer: "Taxta bo'lagi"),
    Question(titleImage: "default", taskLabel: "Kunning qorong'i vaqtida sun'iy yoritilmagan yo'llarda yoki yetarli ko'rinmaslik sharoitida yonmaydigan orqa gabarit chiroqlari bilan to'xtab turish yoki ta'mirlash joyiga borishga ruxsat etiladimi?", choose1: "Alohida ehtiyotkorlik bilan borishga ruxsat etiladi", choose2: "Taqiqlanadi", choose3: "Har qanday holatda ruxsat etiladi", answer: "Taqiqlanadi"),
    ]
    var eQuiz = [
    Question(titleImage: "default", taskLabel: "Sanab o'tilgan hollarning qaysi birida haydovchi o'zining transport vositasini ichki ishlar xodimi ixtiyoriga berishi shart?", choose1: "Barcha hollarda", choose2: "Kechiktirib bo`lmaydigan xizmat vazifalarini bajarish uchun", choose3: "Ish joyiga borish uchun", answer: "Kechiktirib bo`lmaydigan xizmat vazifalarini bajarish uchun"),
    Question(titleImage: "she2", taskLabel: "Qaysi transport haydovchisi ustunlikka ega?", choose1: "Yuk avtomobil haydovchisi", choose2: "Avtobus haydovchisi", choose3: "Oyning juft kunlarida Avtobus haydovchisi", answer: "Yuk avtomobil haydovchisi"),
    Question(titleImage: "she3", taskLabel: "Qaysi belgi transport vositalarining belgida ko'rsatilgandan kam oraliq masofada harakatlanishini taqiqlaydi?", choose1: "1", choose2: "2", choose3: "3", answer: "3"),
    Question(titleImage: "she4", taskLabel: "Mazkur holatda avtobusning chorrahaga kirishiga ruxsat etiladimi?", choose1: "Ruxsat etiladi", choose2: "Taqiqlanadi", choose3: "Agar avtobus belgilangan yo'nalish bo'yicha harakatlanayotgan bo'lsa ruxsat etiladi", answer: "Taqiqlanadi"),
    Question(titleImage: "she5", taskLabel: "Ko'rsatilgan vaziyatda qaysi bo'lakdan o'ngga burilish lozim?", choose1: "Fagat ikkinchi bo'lakdan", choose2: "Ixtiyoriy bo`lakdan", choose3: "Faqat «A» chizig`i bilan belgilangan o'ng chekkadagi bo`lakdan", answer: "Faqat «A» chizig`i bilan belgilangan o'ng chekkadagi bo`lakdan"),
    Question(titleImage: "she6", taskLabel: "Tartibga soluvchining mazkur ishorasi quyidagini bildiradi: ", choose1: "Ko`k, yashil avtomobillarga harakatlanishga ruxsat etiladi. Qizil, sariq, oq avtomobillarga tagiqlanadi", choose2: "Ko`k, qizil, yashil avtomobillarga harakatlanishga ruxsat etiladi.Sari, oq avtomobillarga tagiqlanadi", choose3: "Sari, oq avtomobillarga harakatlanishga ruxsat etiladi.Ko`k, qizil, yashil avtomobillarga tagiqlanadi", answer: "Ko`k, qizil, yashil avtomobillarga harakatlanishga ruxsat etiladi.Sari, oq avtomobillarga tagiqlanadi"),
    Question(titleImage: "default", taskLabel: "Aholi punktlaridan tashqarida yengil avtomobillarning ganday eng katta tezlik bilan harakatlanishiga ruxsat etiladi?", choose1: "100 km/soat", choose2: "70 km/soat", choose3: "90 km/soat", answer: "100 km/soat"),
    Question(titleImage: "default", taskLabel: "Chorrahada aylanma harakatlanish tashkil gilingan. Siz yaqinlashib kelayotgan yo`lning qatnov qismi ikkita harakat bo'lagiga ega. Chorrahaga kirishda burilish uchun Siz qaysi bo'lakni egallashingiz lozim?", choose1: "O'ng bo'lakni", choose2: "Chap bo'lakni", choose3: "O'ng yoki chap bo'lakni", answer: "O'ng yoki chap bo'lakni"),
    Question(titleImage: "default", taskLabel: "Siz qiyalikda svetoforning ruxsat beruvchi ishorasini kutib to`xtadingiz.Bunda avtomobilni joyida tutib turishning eng yaxshi usuli:", choose1: "To'xtab turish tormozi bilan", choose2: "Birinchi uzatma ulangan holda ulovchini joydan jilmay aylantirish hisobiga", choose3: "Yurgizgich o'chirilib, past uzatma ulangan holda", answer: "To'xtab turish tormozi bilan"),
    Question(titleImage: "default", taskLabel: "Qaysi hollarda velosipedchilarga qatnov qismining o'ng chekkasidan chiqishga yo'l qo'yiladi?", choose1: "Yuk ortib ketavotganda", choose2: "Ruxsat etilgan hollarda chapga burilish yoki orgaga qaytish uchun", choose3: "Ikkala sanab o'tilgan hollarda", answer: "Ruxsat etilgan hollarda chapga burilish yoki orgaga qaytish uchun"),
    ]
    var fQuiz = [
        Question(titleImage: "default", taskLabel: "Piyodalarga yo'lni piyodalar o'tish joyidan tashqarida kesib o`tishga ruxsat etiladimi?", choose1: "Ruxsat etiladi", choose2: "Yo'lning qatnov qismi chetiga nisbatan to'g'ri burchak ostida, uning ikkala tomoni yaxshi ko'rinib turadigan,ajratuvchi bo'laksiz yo'llarda kesib o'tishga ruxsat etiladi", choose3: "Taqiqlanadi", answer: "Yo'lning qatnov qismi chetiga nisbatan to'g'ri burchak ostida, uning ikkala tomoni yaxshi ko'rinib turadigan,ajratuvchi bo'laksiz yo'llarda kesib o'tishga ruxsat etiladi"),
        Question(titleImage: "shf2", taskLabel: "Bu joyda hovliga burilishga ruxsat etiladimi?", choose1: "Ruxsat etiladi", choose2: "Taqiqlanadi", choose3: "Dam olish kunlari taqiqlanadi.", answer: "Ruxsat etiladi"),
        Question(titleImage: "shf3", taskLabel: "Ushbu belgilar aholi punktlarida xavfli yo'l qismi boshlanishidan qancha masofa oldin o'rnatiladi?", choose1: "15-25 m", choose2: "25-50 m", choose3: "50-100 m", answer: "50-100 m"),
        Question(titleImage: "default", taskLabel: "Avtomagistralda shatakka olishga ruxsat etiladimi?", choose1: "Istalgan usulda ruxsat etilgan", choose2: "Taqiglanadi", choose3: "50 km/s tezlik bilan ruxsat etiladi", answer: "Istalgan usulda ruxsat etilgan"),
        Question(titleImage: "shf5", taskLabel: "Belgilangan yo'nalish bo'ylab harakatlanayotgan avtobus haydovchisi ushbu sharoitda yo'l berishi kerakmi?", choose1: "Kerak emas", choose2: "Kerak emas, chunki u to'g'riga ketmoqda", choose3: "Kerak", answer: "Kerak"),
        Question(titleImage: "shf6", taskLabel: "Qaysi transport vositalariga harakatlanishga ruxsat etiladi?", choose1: "Fagat gizil avtomobilga", choose2: "Qizil, ko'k va yashil avtomobillarga", choose3: "Barca transport vositalariga", answer: "Qizil, ko'k va yashil avtomobillarga"),
        Question(titleImage: "shf7", taskLabel: "Tirkamali yengil avtomobillarga yo'lning shu yo'l belgisi o'rnatilgan qismida ganday eng katta tezlik bilan harakatlanishga ruxsat etiladi?", choose1: "70 km/soat", choose2: "80 km/soat", choose3: "100 km/soat", answer: "80 km/soat"),
        Question(titleImage: "default", taskLabel: "Qaysi holda Qoidalar ogohlantirish ishorasini berishni talab qilmaydi?", choose1: "Qatnov qismining chekkasida to'xtash oldidan", choose2: "«Xavfli burilish» belgisi bilan belgilangan yo'lning egri burilish joyi oldidan", choose3: "Qo'shni harakat bo'lagiga o'tish oldidan", answer: "«Xavfli burilish» belgisi bilan belgilangan yo'lning egri burilish joyi oldidan"),
        Question(titleImage: "shf9", taskLabel: "Ushbu yo'l belgisi nimani bildiradi?", choose1: "Umumiy vazni (yo`lovchilar va yuk vaznini qo'shgan holda) belgidagidan ortiq bo'lgan transport vositalari,tirkamali transport vositalarining harakat qilishi taqiqlanadi", choose2: "Belgida ko'rsatilgandan ortiq yuk ko'taruvchi yuk avtomobillari va transport vositalari tarkibi (tirkamali yuk avtomobillari)ning harakat qilishi taqiqlanadi", choose3: "Ikkala javob ham to`g`ri", answer: "Belgida ko'rsatilgandan ortiq yuk ko'taruvchi yuk avtomobillari va transport vositalari tarkibi (tirkamali yuk avtomobillari)ning harakat qilishi taqiqlanadi"),
        Question(titleImage: "default", taskLabel: "M2: M3 toifali avtotransport vositalari shina protektorlari naqshlarining qoldiq balandligi kamida qancha bo'lishi kerak?", choose1: "2 mm", choose2: "1,2 mm", choose3: "0,8 mm", answer: "2 mm"),
    ]
    var gQuiz = [
        Question(titleImage: "default", taskLabel: "Qaysi javobda yo'lovchilar uchun chiqish va tushish maydonchasi boʻlmagan sharoitdagi yo'lovchilar chiqish va tushish joylari toʻliq ko'rsatilgan?", choose1: "Qatnov qismi yoki trotuar tomonidan", choose2: "Yo'l yoqasida yoki qatnov qismi tomonidan", choose3: "Trotuar yoki yo'l yoqasi tomonidan", answer: "Trotuar yoki yo' yogasi tomonidan"),
        Question(titleImage: "shg2", taskLabel: "Qaysi javobda ruxsat etilgan harakatlanish yo'nalishlari to'g'ri ko'rsatilgan?", choose1: "A", choose2: "A va V", choose3: "A va B", answer: "A va B"),
        Question(titleImage: "shg3", taskLabel: "Ushbu yo'l belgisi qo'shimcha axborot belgisi bilan nimani bildiradi?", choose1: "Yengil avtomobillar va mototsikllarni to'xtab turishga qo'yish joyi va usuli", choose2: "Transport vositalarining to'xtab turish joyiga avtomobilni ko'rsatilgan usulda qo'yish taqiqlanadi", choose3: "Ruxsat etilgan to`la vazni 3,5 tonnadan ortiq transport vositalarining to'xtab turish toshi borligini bildiradi", answer: "Yengil avtomobillar va mototsikllarni to'xtab turishga qo'yish joyi va usuli"),
        Question(titleImage: "default", taskLabel: "Belgilangan yo'nalish bo'yicha harakatlanayotgan yo'nalishli transport vositalarining haydovchilari piyodalar o'tish joyidan tashqarida oq hassa bilan ishora berayotgan ko'zi ojiz piyodalarni o'tkazib yuborishlari kerakmi?", choose1: "O'tkazib yuborishlari kerak emas", choose2: "Barcha hollarda o`tkazib yuborishlari kerak", choose3: "Yo`l tuman yoki muzlama bo`lgan taqdirda o`tkazib yuborishlari kerak bo`ladi.", answer: "Barcha hollarda o`tkazib yuborishlari kerak"),
        Question(titleImage: "shg5", taskLabel: "Transport vositalari chorrahadan quyidagi tartibda o'tadilar:", choose1: "Mototsikl, tramvay va avtomobil", choose2: "Tramvay, mototsikl, avtomobil", choose3: "Tramvay va avtomobil, mototsikl", answer: "Mototsikl, tramvay va avtomobil"),
        Question(titleImage: "shg6", taskLabel: "Harakatlanish kimga ruxsat etilgan?", choose1: "Barcha transport vositalariga", choose2: "Mototsiklga", choose3: "Avtomobil va mototsiklga", answer: "Mototsiklga"),
        Question(titleImage: "shg7", taskLabel: "Qaysi yo'nalishda harakatlanishga ruxsat etiladi?", choose1: "Faqat o'ngga", choose2: "Fagat chapga", choose3: "Faqat to`g`riga", answer: "Fagat chapga"),
        Question(titleImage: "default", taskLabel: "Agar transport vositasi o'lchamlari kattaligidan oki boshga sabablarga ko'ra chetki holatda burilishni bajara olmagan bo'lsa, bu qoidadan chetga chiqqan holda burilishga yo'l qo'yiladimi?", choose1: "Yo'l qo'yilmaydi", choose2: "Yo`l qo`yiladi,bu boshqa transport vositalariga xalaqit bermasa,harakat xavfsizligini ta'minlab,chetga chiqish mumkin", choose3: "Aholi punktidan tashqaridagi yo'llarda yo'l qo'yiladi", answer: "Yo'l qo'yiladi, agar bu boshqa transport vositalariga xalaqit bermasa, harakat xavfsizligini ta'minlab, talablardan chetga chiqishi mumkin"),
        Question(titleImage: "default", taskLabel: "Qattiq ulagich transport vositalari orasida qanchadan ortiq bo'lmagan masofani ta'minlashi kerak?", choose1: "2 m", choose2: "3 m", choose3: "4 m", answer: "4 m"),
        Question(titleImage: "default", taskLabel: "Velosipedchilarga trotuarda harakatlanishga ruxsat etiladimi?", choose1: "Ruxsat etiladi", choose2: "Piyodalar bo'lmaganda ruxsat etiladi", choose3: "Taqiqlanadi", answer: "Taqiqlanadi"),
    ]
    var hQuiz = [
    Question(titleImage: "default", taskLabel: "Shatakka olingan avtomobilda odamlarni tashishga ruxsat etiladimi?", choose1: "Avtobusda ruxsat etiladi", choose2: "Yengil avtomobilda ruxsat etiladi", choose3: "Qattiq ulagichda shatakka olingan yuk avtomobili yukxonasida ruxsat etiladi", answer: "Yengil avtomobilda ruxsat etiladi"),
    Question(titleImage: "shh2", taskLabel: "Bu joyda quvib o'tishga ruxsat etiladimi?", choose1: "Ruxsat etiladi", choose2: "Taqiqlanadi", choose3: "Agar quvib o'tilayotgan transporting tezligi 40 km/soatdan kam bo'lsa ruxsat etiladi", answer: "Ruxsat etiladi"),
    Question(titleImage: "shh3", taskLabel: "Qaysi belgi 'T' simon chorrahada harakatlanish yo'nalishini ko'rsatadi?", choose1: "1", choose2: "2", choose3: "3", answer: "2"),
    Question(titleImage: "default", taskLabel: "Oldida transport vositasi to'xtab turgan tartibga solinmaydigan piyodalar o'tish joyiga yaqinlashib kelmoqdasiz. Siz nima qilishingiz kerak?", choose1: "Piyodalar o'tish joyidan o'tish", choose2: "Piyodalar o'tish joyidan to'xtamasdan o'tish, lekin alohida ehtiyotkorlik bilan", choose3: "Harakatni davom ettirish, lekin to'xtab turgan transport vositasi oldida piyodalar yo'qligiga ishonch hosil gilgan holda", answer: "Harakatni davom ettirish, lekin to'xtab turgan transport vositasi oldida piyodalar yo'qligiga ishonch hosil gilgan holda"),
    Question(titleImage: "shh5", taskLabel: "Qaysi transport vositalariga harakatlanish ruxsat etiladi?", choose1: "Yashil, ko`k va qora avtomobillarga", choose2: "Qizil, sariq va yashil avtomobillarga", choose3: "Yashil, ko`k va qizil", answer: "Yashil, ko`k va qizil"),
    Question(titleImage: "shh6", taskLabel: "Transport vositalari chorrahadan quyidagi tartibda o'tadilar:", choose1: "Tramvay, avtobus va yengil avtomobil", choose2: "Avtobus, yengil avtomobil, tramvay", choose3: "Yengil avtomobil, tramvay, avtobus", answer: "Tramvay, avtobus va yengil avtomobil"),
    Question(titleImage: "default", taskLabel: "Qanday hollarda quvib o'tish taqiqlanadi?", choose1: "Chorrahalarda, tartibga solingan chorrahalardagi qarama-qarshi yo'nalishga chiqmasdan quvib o'tish hollarini hisobga olmaganda", choose2: "Chorrahalarda, velosipedlar va yon kajavasiz ikki g'ildirakli mototsikllarni quvib o'tish hollarini hisobga olmaganda", choose3: "Sanab o'tilgan barcha hollarda", answer: "Sanab o'tilgan barcha hollarda"),
    Question(titleImage: "default", taskLabel: "Kunduzgi vaqtda yaqinni yorituvchi fara chirog'ini yoqish ogohlantirish ishorasi bo'ladimi?", choose1: "Bo`ladi", choose2: "Bo`lmaydi", choose3: "Ko`rinish darajasi past bo`lgan holda bo`ladi", answer: "Bo`ladi"),
    Question(titleImage: "default", taskLabel: "Agar g'ildiraklardagi tortish kuchi yo'l bilan tishlashish kuchidan ortiq bo'lsa:", choose1: "Yurgizgich o'chib qoladi", choose2: "Ulagich detallarining yemirilishi ortadi", choose3: "Yetakchi g'ildiraklar o'rnidan jilmay aylanadi", answer: "Yetakchi g'ildiraklar o'rnidan jilmay aylanadi"),
    Question(titleImage: "default", taskLabel: "Qayd etilgan qaysi hollarda transport vositalarini ekspluatatsiva qilishga ruxsat etiladi?", choose1: "Qo'shaloq shinalar orasiga xavf-xatar tug'diruvchi begona jismlar tiqilib golgan", choose2: "Shina o'lchamlari yoki cheklangan og'irlik transport vositasining turiga mos kelmaydi", choose3: "M1, M2; M3 toifali 1 klass avtotransport vositalarining oldingi o`qiga 1 klassda ta'mirlangan shinalar qo'yilgan", answer: "M1, M2; M3 toifali 1 klass avtotransport vositalarining oldingi o`qiga 1 klassda ta'mirlangan shinalar qo'yilgan")
    ]
    var iQuiz = [
    Question(titleImage: "shi1", taskLabel: "Qaysi transport vositalariga ko'rsatilgan yo'nalishlar bo'yicha harakatlanishga ruxsat etiladi?", choose1: "Avtomobil haydovchisiga", choose2: "Avtomobil va mototsikl haydovchisi", choose3: "Tramvay va avtomobil haydovchisiga", answer: "Tramvay va avtomobil haydovchisiga"),
    Question(titleImage: "shi2", taskLabel: "Avtomobillarga qaysi yo'nalishda harakatlanishga ruxsat etiladi?", choose1: "Qizil avtomobilga - to'g'riga, ko'k avtomobilga - to'g'riga va chapga", choose2: "Qizil va ko'k avtomobilga - to'g'riga", choose3: "Qizil avtomobilga - to'g'riga, ko'kka - chapga", answer: "Qizil avtomobilga - to'g'riga, ko'kka - chapga"),
    Question(titleImage: "shi3", taskLabel: "Ushbu holatda quvib o`tishga ruxsat etiladimi?", choose1: "Ruxsat etiladi", choose2: "Taqiqlanadi", choose3: "Agar quvib o 'tilayotgan transport vositasi 40 km/soatdan kam tezlik bilan harakatlanayotgan bo'lsa, ruxsat etiladi", answer: "Taqiqlanadi"),
    Question(titleImage: "shi4", taskLabel: "Ushbu svetofor qaysi harakatlanishni tartibga solish uchun qo`llanadi?", choose1: "Qatnov qismining butun kengligi bo'yicha", choose2: "Qatnov qismidagi harakatlanish yo`nalishi qarama-qarshi tomonga o'zgaradigan bo'laklar bo'yicha", choose3: "Faqat belgilangan yo`nalishdagi transport vositalari uchun mo`jallangan bo'lak bo'yicha", answer: "Qatnov qismidagi harakatlanish yo`nalishi qarama-qarshi tomonga o'zgaradigan bo'laklar bo'yicha"),
    Question(titleImage: "shi5", taskLabel: "Transport vositalari chorrahadan quyidagi tartibda o`tadilar:", choose1: "Qizil avtomobil, tramvay, yashil, ko'k avtomobil", choose2: "Tramvay, qizil, ko'k, yashil avtomobil", choose3: "Tramvay, qizil, yashil, ko'k avtomobil", answer: "Tramvay, qizil, yashil, ko'k avtomobil"),
    Question(titleImage: "shi6", taskLabel: "Ko`rsatilgan avtotsisternalardan qaysi biri burilishda ag`darilib ketish xavfi kamroq, turg'unroq?", choose1: "Suyuqlik bilan to'liq to'ldirilgani", choose2: "Suyuqlik bilan 75 foizgacha to'ldirilgani", choose3: "Ikkalasi bir xil", answer: "Suyuqlik bilan to'liq to'ldirilgani"),
    Question(titleImage: "shi7", taskLabel: "Shunday yo`l belgisi bo'lgan yo`l qismlarida ruxsat etilgan to'la vazni 3,5 tonnadan oshmaydigan yuk avtomobillariga qanday eng katta tezlik bilan harakat qilishga ruxsat etiladi?", choose1: "100 km/soat", choose2: "110 km/soat", choose3: "70 km/soat", answer: "100 km/soat"),
    Question(titleImage: "shi8", taskLabel: "To'xtagan transport vositasi bilan yotiq sidirg'a chiziq orasidagi masofa qancha bo'lganida to'xtash taqiqlanadi?", choose1: "4 m", choose2: "2.5 m", choose3: "5.5 m", answer: "2.5 m"),
    Question(titleImage: "default", taskLabel: "Harakat tezligi ikki marta oshganda, tormozlanish yo'li necha marta ortadi?", choose1: "Tormoz yo'li harakat tezligiga bog'liq emas", choose2: "Uch marta", choose3: "To'rt marta", answer: "To'rt marta"),
    Question(titleImage: "default", taskLabel: "Bir tirkamali avtopoyezdning qanday eng katta uzunligida DYHXX ruxsatisiz harakatlanishga yo'l qo'yiladi?", choose1: "16 m", choose2: "20 m", choose3: "18 m", answer: "20 m")
    ]
    var jQuiz = [
    Question(titleImage: "shj1", taskLabel: "Qizil avtomobilning haydovchisi yiltillovchi chiroq-mayoqchali va maxsus tovushli ishora yoqilgan transport vositasi yaginlashib kelayotganda nima qilishi kerak?", choose1: "Harakat bo`lagini o`zgartirmasdan to'xtashi va majburiy to'xtash chiroqlarini yoqishi", choose2: "Tezlikni pasaytirishi va boshga qatorga o`tish bilan bog'lik keskin manyovrlarga yo`l qo`ymasdan harakatni davom ettirishi", choose3: "Yo`l berishi", answer: "Yo`l berishi"),
    Question(titleImage: "shj2", taskLabel: "Mazkur belgi bilan belgilangan hududda qanday cheklovlar o`rnatilgan?", choose1: "Harakat tezligini 5 km/s dan oshmasligi kerakligini bildiradi", choose2: "Transport vositalarini boshqarishni o'rgatish", choose3: "Kirib, chigib ketish harakati taqiqlanadi", answer: "Transport vositalarini boshqarishni o'rgatish"),
    Question(titleImage: "shj3", taskLabel: "Qaysi belgi teng ahamiyatli yo`llar kesishish chorrahasiga yaqinlashib kelayotganlik haqida ogohlantiradi?", choose1: "5", choose2: "4", choose3: "3", answer: "5"),
    Question(titleImage: "default", taskLabel: "Svetaforning taqiqlovchi ishorasida va shlagbaum ochiq bo'lganda haydovchi nima qilish kerak?", choose1: "To'xtash chizig'i oldida, «To'xtamasdan harakatlanish taqiqlangan» belgisi oldida,agar u yo`q bo`lsa shlagbaumgacha 5 m yaqin bo'lmagan masofada to'xtash", choose2: "Shlagbaumgacha 10 metrdan yaqin bo'lmagan masofada to`xtash", choose3: "Shlagbaumning holatiga asoslangan holda kesishmadan o'tishi kerak", answer: "To'xtash chizig'i oldida, «To'xtamasdan harakatlanish taqiqlangan» belgisi oldida,agar u yo`q bo`lsa shlagbaumgacha 5 m yaqin bo'lmagan masofada to'xtash"),
    Question(titleImage: "shj5", taskLabel: "Chorrahadan ikkinchi bo'lib kim o'tadi?", choose1: "Tramvay", choose2: "Qizil avtomobil", choose3: "Ko`k avtomobil", answer: "Tramvay"),
    Question(titleImage: "default", taskLabel: "Qanday hollarda haydovchisi bo'lmagan transport vositalarini shatakka olish mumkin?", choose1: "Barcha hollarda", choose2: "Egiluvchan yoki qattiq ulagichda shatakka olishda", choose3: "Qattiq ulagichning tuzilishi shatakka olingan transport vositalarini shatakka olgan transport vositalarining izidan harakatlanishini ta`minlaganda", answer: "Qattiq ulagichning tuzilishi shatakka olingan transport vositalarini shatakka olgan transport vositalarining izidan harakatlanishini ta`minlaganda"),
    Question(titleImage: "shj7", taskLabel: "Bu yerda quvib o'tishga ruxsat etiladimi?", choose1: "Ruxsat etiladi", choose2: "Taqiqlanadi", choose3: "Ruxsat etiladi agar quvib o`tilayotgan avtomobilning tezligi 40km/soatdan kam bo`lgan holda.", answer: "Taqiqlanadi"),
    Question(titleImage: "default", taskLabel: "Qaysi ishoralar ogohlantiruvchi hisoblanadi", choose1: "Burilishni ko'rsatadigan miltillovchi chiroq yoki qo'l bilan beriladigan ishoralar", choose2: "Fara chiroqlarini yoqib-o'chirilishi va kunduzgi vaqtda yaqinni yorituvchi fara chirog'ining yoqilishi", choose3: "Sanab o`tilgan barcha ishoralar", answer: "Sanab o`tilgan barcha ishoralar"),
    Question(titleImage: "default", taskLabel: "Boshqarishni o'rgatishdagi transport vositasi qanday jihozlangan bo'lishi kerak?", choose1: "Qoidalarning talablariga asosan, taniqlik belgilari bilan", choose2: "Ilashma(stipleniya) va ishchi tormozining qo'shimcha tepkilari bilan", choose3: "Sanab o'tilgan barcha jihozlar va belgilar bilan", answer: "Sanab o'tilgan barcha jihozlar va belgilar bilan"),
    Question(titleImage: "default", taskLabel: "Sanab o'tilgan holatlarning qaysilarida transport vositasidan foydalanish taqiqlanadi?", choose1: "Pnevmatik tormoz yuritmasining manometri ishlamaydi" , choose2: "Mototsiklning boshqaruv dempferi nosoz", choose3: "Sanab o'tilgan barcha hollarda", answer: "Sanab o'tilgan barcha hollarda")
    ]
    
    mutating func getType(type: Int) {
        switch type {
        case 0: dataOfQuiz = aQuiz
        case 1: dataOfQuiz = bQuiz
        case 2: dataOfQuiz = cQuiz
        case 3: dataOfQuiz = dQuiz
        case 4: dataOfQuiz = eQuiz
        case 5: dataOfQuiz = fQuiz
        case 6: dataOfQuiz = gQuiz
        case 7: dataOfQuiz = hQuiz
        case 8: dataOfQuiz = iQuiz
        case 9: dataOfQuiz = jQuiz
            
        default: dataOfQuiz = []
        }
    }
    
    
    //MARK: BUTTONGA JAOVBLARNI ULASH
    func getAnswer()->[String]{
        let answer = [
            dataOfQuiz[questionNumber].choose1,
            dataOfQuiz[questionNumber].choose2,
            dataOfQuiz[questionNumber].choose3,
        ]
        return answer
    }
    //MARK: RASMLARNI ULASH
    func getTaskImage()->String{
        return dataOfQuiz[questionNumber].titleImage
    }
    //MARK: SAVOLLARNI LABELGA ULASH
    func getQuestionLabel()->String{
        return dataOfQuiz[questionNumber].taskLabel
    }
    //MARK: keyngi savolga o`tish
    mutating func nextQuestion(){
        if questionNumber < dataOfQuiz.count - 1 {
            questionNumber += 1
            isFinish = false
            
        }
        else{
            isFinish = true
            questionNumber = 0
        }
    }
    
    //MARK: savol raqamini olish
    func getQuestionNumber()->Int{
        return questionNumber
    }
    //MARK: javob to`g`ri noto`g`riligini tekshirish
    mutating func checkAnswer(userAnswer: String)->Bool{
        if userAnswer == dataOfQuiz[questionNumber].answer{
            score+=1
            return true
        } else{
            return false
        }
    }
    //MARK: Shotni yuborish
    func getScore()->Int{
        return score
    }
    
    
    
}

