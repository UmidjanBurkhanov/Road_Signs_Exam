//
//  PrivillegeCell.swift
//  yol belgilari
//
//  Created by Umidjon Burhonov on 21/06/22.
//

import UIKit
class PrivillegeCell: UICollectionViewCell{
    static let identifier = "cell"
    let titleLabel = UILabel()
    let singImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
        self.backgroundColor  = .white.withAlphaComponent(0.25)
    }
    private func initViews(){
        self.addSubview(titleLabel)
        self.addSubview(singImage)
        singImage.image = UIImage(named: "learn")
        singImage.contentMode = .scaleAspectFit
        singImage.snp.makeConstraints { make in
            make.left.top.bottom.equalToSuperview().inset(10)
            make.width.equalToSuperview().multipliedBy(0.25)
        }

        titleLabel.text = "1.1"
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        
        titleLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        titleLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.height.equalToSuperview()
            make.right.equalToSuperview().inset(10)
            make.left.equalTo(singImage.snp.right).offset(10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


