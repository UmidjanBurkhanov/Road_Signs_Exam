//
//  LearnModel.swift
//  We Learn Professions
//
//  Created by Umidjon Burhonov on 19/07/22.
//

import UIKit

struct LearnSingsData{
    let data: [LearnSingsDetailes] = [
        LearnSingsDetailes(title: "Ogohlantiruvchi", controller: WarningController()),
        LearnSingsDetailes(title: "Imtiyoz", controller: PrivilegeController()),
        LearnSingsDetailes(title: "Taqiqlovchi", controller: ProhibitiveController()),
        LearnSingsDetailes(title: "Buyruvchi", controller: CommanderController()),
        LearnSingsDetailes(title: "Axborot-Ko`rsatgich", controller: InformationIndexController()),
        LearnSingsDetailes(title: "Servis", controller: ServiseController()),
        LearnSingsDetailes(title: "Qo`shimcha Axborot", controller: AdditionalInformationController())
    ]
    
    func getSize()->Int{
        return data.count
    }
    func getItem(index: Int)->LearnSingsDetailes{
        return data[index]
    }
}


struct LearnSingsDetailes{
    var title: String
    var controller: UIViewController
}
