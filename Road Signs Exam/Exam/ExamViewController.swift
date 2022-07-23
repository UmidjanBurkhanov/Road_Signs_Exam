//
//  ExamViewController.swift
//  We Learn Professions
//
//  Created by Umidjon Burhonov on 19/07/22.
//

import UIKit
import SnapKit
class QuizController: UIViewController {
    let model = QuizData()
    lazy var collectionView: UICollectionView = {
       
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
        collectionView.register(QuizCell.self, forCellWithReuseIdentifier: QuizCell.identifier)
        return collectionView
        
        }()
override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        title = "Imtihon"
        initViews()
  
    }
    private func initViews(){
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.right.left.equalToSuperview()
            make.bottom.equalToSuperview()
            //equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
    }

  

}
