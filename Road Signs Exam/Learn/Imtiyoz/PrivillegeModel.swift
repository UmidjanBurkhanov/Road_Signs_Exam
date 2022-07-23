//
//  PrivillegeModel.swift
//  yol belgilari
//
//  Created by Umidjon Burhonov on 21/06/22.
//

import UIKit

struct PrivillegeData{
    let data: [PrivillegeDetailes] = [
    PrivillegeDetailes(title: "2.1. Asosiy yo’l", imageName: "2.1", definition: """
    Xarakat tartibga solinmagan chorraxalarda oldin o`tish xuquqini beradi.Belgi asosiy yo`l boshiga va kesishuvchilarning bevosita oldiga o`rnatiladi.
    Belgi asosiy yo`l boshiga va chorraxalarning bevosita oldiga o`rnatiladi
"""),
    PrivillegeDetailes(title: "2.2. Asosiy yo’lning oxiri", imageName: "2.2", definition: """
    Ushbu "Asosiy yo’lning oxiri" belgisi tartibga solinmagan chorraxalarda imtiyoz bilan xarakatlanish xuquqi bor asosiy yo`lning oxirini bildiradi.Odatda ushbu belgi "Yo`l bering!" yoki "To`xtamasdan xarakatlanish taqiqlangan" belgilari bilan birgalikda o`rnatiladi.
"""),
    PrivillegeDetailes(title: "2.3.1. Ikkinchi darajali yo’l bilan kesishuv", imageName: "2.3.1", definition: """
    Belgi ikkinchi darajali yo`l bilan kesishuv oldida asosiy yo`lda o`rnatiladi.Belgi xaydovchiga xarakatlanishda imtiyoz beradi(asosiy yo`l qalin chiziq bilan,ikkinchi darajali yo`l - ingichka chiziq bilan tasvirlangan.
    Belgi aholi punktlaridan tashqarida 2.1 belgisi bilan belgilangan yo`llarda xaydovchilar xarakatlanishida imtiyozga ega bo`lgan chorraxalarni bildirish uchun o`rnatiladi.
"""),
    PrivillegeDetailes(title: "2.3.2 – tutashuv o’ngdan", imageName: "2.3.2", definition: """
    Ushbu belgi aholi punktlarida kesishmagacha 50-100 metr masofada ,aholi punktlaridan tashqarida esa 150-300 metr masofada o`rnatiladi
"""),
    PrivillegeDetailes(title: "2.3.3 – tutashuv chapdan", imageName: "2.3.3", definition: """
    Ushbu belgi aholi punktlarida kesishmagacha 50-100 metr masofada ,aholi punktlaridan tashqarida esa 150-300 metr masofada o`rnatiladi
"""),
    PrivillegeDetailes(title: "2.4 Yo’l bering", imageName: "2.4", definition: """
    Haydovchi kesib o`tilayotgan yo`ldan, 7.13 qo`shimcha axborot belgisi bo`lganda esa asosiy yo`ldan xarakatlanayotgan transport vositasiga yo`l berishi kerak.
    Aholi punktlaridan tashqarida bu belgi chorraxa oldida va unga yetmasdan ma`lum masofada "Obyektgacha bo`lgan masofa" (7.1.1) qo`shimcha axborot belgisi bilan o`rnatilishi mumkin.
"""),
    PrivillegeDetailes(title: "2.5 To’xtamasdan harakatlanish taqiqlangan", imageName: "2.5", definition: """
    To`xtash chizig`i oldida,agar u bo`lmasa,kesib o`tiladigan qatnov qismining chetida to`xtamasdan xarakatlanish taqiqlanadi.Xaydovchi kesib o`tilayotgan yo`ldan,7.13 qo`shimcha axborot belgisi bo`lganda esa asosiy yo`ldan harakatlanayotgan transport vositalariga yo`l berishi kerak.
"""),
    PrivillegeDetailes(title: "2.6 Ro’para harakatlanishning ustunligi", imageName: "2.6", definition: """
    Qarama-qarshi xarakatlanishni qiyinlashtiradigan  xolda yo`lning tor qismiga kirish taqiqlanadi.Xaydovchi yo`lning tor qismida bo`lgan yoki ro`paradan unga yaqin bo`lgan transport vositasiga yo`l berishi kerak.
"""),
    PrivillegeDetailes(title: "2.7 Ro’paradagi harakatlanishga nisbatan imtiyoz", imageName: "2.7", definition: """
    Yo`lning tor qismida xarakatlanishda xaydovchi ro`paradan kelayotgan transport vositasiga nisbatan imtiyozga ega ekanligini bildiradi.
    Ushbu "Ro’paradagi harakatlanishga nisbatan imtiyoz" belgisi "Ro’para harakatlanishning ustunligi" belgisi bilan juftlikda,faqat yo`lning tor qismini qarama-qarshi tomonida o`rnatiladi
"""),

    
    
    
    
    ]
    
    func getSize()->Int{
        return data.count
    }
    func getItem(index: Int)->PrivillegeDetailes{
        return data[index]
    }
}


struct PrivillegeDetailes{
    let title: String
    let imageName: String
    let definition: String
}
