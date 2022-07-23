//
//  ExamCell.swift
//  We Learn Professions
//
//  Created by Umidjon Burhonov on 19/07/22.
//

import UIKit

class QuizCell: UICollectionViewCell{
    let image = UIImageView()
    let titleLabel = UILabel()
    static let identifier = "cell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
        self.backgroundColor = .white.withAlphaComponent(0.25)
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius =  18
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func initViews(){
        self.addSubview(image)
        self.addSubview(titleLabel)
        image.image = UIImage(named: "2.1")?.withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFit
        image.snp.makeConstraints { make in
            make.left.top.bottom.equalToSuperview().inset(15)
            make.width.equalTo(80)
        }
        titleLabel.text = "Shablonlar"
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        titleLabel.font = .systemFont(ofSize: 25, weight: .bold)
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(image.snp.right).offset(20)
            make.top.bottom.right.equalToSuperview()
        }
        
    }
}

