//
//  2PrivilegeController.swift
//  yol belgilari
//
//  Created by Umidjon Burhonov on 17/06/22.
//

import UIKit
//MARK: IMTIYOZ BELGILARI
class PrivilegeController: UIViewController {
    let model = PrivillegeData()
    lazy var collectioView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.backgroundColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(PrivillegeCell.self, forCellWithReuseIdentifier: PrivillegeCell.identifier)
        return collectionView
    }()
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.tintColor = UIColor.black
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        title = "Imtiyoz belgilari"
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Ortga", style: .plain, target: nil, action: nil)
            let appearance = UINavigationBarAppearance()
            appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.red]
            appearance.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            navigationItem.standardAppearance = appearance
            navigationItem.scrollEdgeAppearance = appearance
       
        initViews()
    }
    
    private func initViews(){
        view.addSubview(collectioView)
        collectioView.snp.makeConstraints { make in
            make.right.left.bottom.equalToSuperview()
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)

        }
    }
}
