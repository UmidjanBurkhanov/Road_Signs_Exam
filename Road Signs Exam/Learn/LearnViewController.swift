//
//  LearnViewController.swift
//  We Learn Professions
//
//  Created by Umidjon Burhonov on 19/07/22.
//

import UIKit
import Lottie
import  SnapKit
class LearnController: UIViewController {
    let model = LearnSingsData()
    
    
    lazy var collectioView: UICollectionView = {

       let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(LearnCVCell.self, forCellWithReuseIdentifier: LearnCVCell.identifier)
        
        return collectionView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        title = "Shablonlar"
        navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: ""), style: .done, target: self, action: #selector(backClicked))
  
     initViews()
    }
    
    @objc func backClicked( _ sender: UIBarButtonItem) {
        
        navigationController?.popViewController(animated: true)
    }

    
    private func initViews(){
        view.addSubview(collectioView)
        collectioView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.right.left.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }

}
