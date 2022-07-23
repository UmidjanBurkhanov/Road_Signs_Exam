//
//  DefiniftionPrivillegeController.swift
//  yol belgilari
//
//  Created by Umidjon Burhonov on 21/06/22.
//

import UIKit

class DefiniftionPrivillegeController: UIViewController {
    var singTitle = " "
    var titleSing = " "
    var  imageName = " "
    var definitionTextView = " "
    let singImage = UIImageView()
    let definitionLabel = UITextView()
    let titleLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        initViews()
        title = singTitle
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Orqaga", style: .plain, target: nil, action: nil)
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            
            appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.red]
            appearance.backgroundColor = UIColor.learnBC
            navigationItem.standardAppearance = appearance
            navigationItem.scrollEdgeAppearance = appearance
        } else {
            // Fallback on earlier versions
        }
    }
    private func initViews(){
        view.addSubview(singImage)
        view.addSubview(definitionLabel)
        view.addSubview(titleLabel)
        
        singImage.image = UIImage(named: imageName)
        singImage.contentMode = .scaleAspectFit
        singImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).inset(10)
            make.right.left.equalToSuperview().inset(20)
            make.height.equalToSuperview().multipliedBy(0.2)
        }
        titleLabel.snp.makeConstraints { make in
            make.right.left.equalToSuperview().inset(10)
            make.top.equalTo(singImage.snp.bottom).offset(10)
 //           make.bottom.equalTo(definitionLabel.snp.top).offset(-10)
        }
        definitionLabel.text = definitionTextView
        definitionLabel.textColor = .black
        definitionLabel.textAlignment = .justified
        definitionLabel.textContainer.maximumNumberOfLines = 0
        definitionLabel.isEditable = false
        if self.view.frame.height > 670{
            definitionLabel.font = .systemFont(ofSize: 23, weight: .semibold)
        }
        else{
            definitionLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        }
        definitionLabel.showsVerticalScrollIndicator = false

        definitionLabel.backgroundColor = .white.withAlphaComponent(0.5)
        definitionLabel.layer.cornerRadius = 18
        definitionLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(60)
            make.right.left.equalToSuperview().inset(10)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
        if self.view.frame.height>670{
            titleLabel.font = .systemFont(ofSize: 30, weight: .heavy)
        }
        else{
            titleLabel.font = .systemFont(ofSize: 23, weight: .heavy)

        }
        titleLabel.text = titleSing
        titleLabel.textAlignment = .justified
        titleLabel.adjustsFontSizeToFitWidth  = true
        titleLabel.adjustsFontForContentSizeCategory = true
        titleLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        titleLabel.numberOfLines = 0
        titleLabel.snp.makeConstraints { make in
 //           make.right.left.equalToSuperview().inset(10)
 //           make.top.equalTo(singImage.snp.bottom).offset(10)
            make.bottom.equalTo(definitionLabel.snp.top).offset(-10)
        }
        
    }


 

}
