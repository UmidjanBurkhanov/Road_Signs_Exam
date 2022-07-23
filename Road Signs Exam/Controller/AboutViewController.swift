//
//  AboutViewController.swift
//  We Learn Professions
//
//  Created by Umidjon Burhonov on 19/07/22.
//

import UIKit

class AboutViewController: UIViewController {
   
    let backView = UIView()
    let definition = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

    

       
           
          
            
                title = "Dastur haqida"
              
                    let appearance = UINavigationBarAppearance()
                    appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
                    appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.red]
                    appearance.backgroundColor = UIColor.learnBC
                    navigationItem.standardAppearance = appearance
             
                //navigationItem.scrollEdgeAppearance = appearance
        view.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
                initViews()
            }
            private func initViews(){
                
                view.addSubview(backView)
                view.sendSubviewToBack(backView)
                backView.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
                backView.layer.cornerRadius = 20
                backView.layer.borderWidth = 1
                backView.layer.borderColor = UIColor.gray.cgColor
                
                backView.snp.makeConstraints { make in
                    make.top.equalToSuperview()
                    make.bottom.equalToSuperview()
                    make.centerX.equalToSuperview()
                    make.width.equalToSuperview()
                }
                view.addSubview(definition)
                definition.text = """
           

             Bu dasturimiz asosan haydovchilik guvoxnomasini olish yoshiga yetganlar uchun mo`ljallangan mo'ljallangan bo'lib,bu dasturimiz haydovchilik guvoxnomasini olishda yo`l belgilarini va yo`l qoidalarimi o`rganishga yaqindan yordam beradi.Dasturda foydalanuvchi o`zi istagan yo`l belgisini turlarini tanlab bilmagan narsalarini o`rganishlari mumkin.Ushbu ilovamizda yo`l qoidalari va belgilariga oid test savollari ham mavjud bo`lib o`sha shablon testlar orqali o`z bilimlarini yanada mustahkamlashi mumkin.

        """
                definition.textAlignment = .center
                definition.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                definition.isEditable = false
                definition.font = .systemFont(ofSize: 20, weight: .bold)
                definition.layer.cornerRadius = 20
                definition.backgroundColor = .clear
                
                definition.snp.makeConstraints { make in
                    make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(10)
                    make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-20)
                    make.centerX.equalToSuperview()
                    make.width.equalToSuperview().multipliedBy(0.90)
                }
                
                
            }
        }

