//
//  LearnCVCell.swift
//  We Learn Professions
//
//  Created by Umidjon Burhonov on 19/07/22.
//

import UIKit

class LearnCVCell: UICollectionViewCell {
    
    let titleLabel = UILabel()
    
    static let identifier = "cell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
        self.backgroundColor  = .white.withAlphaComponent(0.25)
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius =  18
    }
    private func initViews(){
        self.addSubview(titleLabel)
        titleLabel.text = "Ogohlantiruvchi"
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        titleLabel.font = .systemFont(ofSize: 20, weight: .heavy)
        titleLabel.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
