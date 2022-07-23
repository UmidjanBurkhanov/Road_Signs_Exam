//
//  HomeViewController.swift
//  We Learn Professions
//
//  Created by Umidjon Burhonov on 19/07/22.
//

import UIKit
import Lottie
import SnapKit


class HomeViewController: UIViewController {

    let titleLabel = UILabel()
    let startBtn = UIButton()
    let examBtn  = UIButton()
    
        var animationView: AnimationView?
        var timer: Timer!
        override func viewDidLoad() {
            super.viewDidLoad()
            
            navigationController?.isNavigationBarHidden =  true

//            initAnimations()
            view.backgroundColor = .white
            titleView()
            startview()
            examView()
        }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       tabBarController?.tabBar.isHidden =  false
        animationView?.removeFromSuperview()
        initAnimations()
        navigationController?.isNavigationBarHidden =  true
    }
    
    
    
    private func titleView(){
//        let screenHeigth = self.view.frame.height
        view.addSubview(titleLabel)
        titleLabel.text = "Yo`l belgilarini biz bilan o`rganing"
        titleLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        
            titleLabel.font = .systemFont(ofSize: 45, weight: .heavy)
            titleLabel.snp.makeConstraints { make in
                make.top.equalTo(view.snp.top).offset(80)
                make.left.equalToSuperview().inset(10)
                make.width.equalToSuperview()
                make.height.equalToSuperview().multipliedBy(0.3)
            }
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        animationView?.play()
//
//    }
        private func initAnimations(){
            animationView = .init(name: "launchPage")
            animationView?.frame = view.bounds
            animationView?.loopMode = .loop
            animationView?.animationSpeed = 1
            view.addSubview(animationView!)
            view.sendSubviewToBack(animationView!)
            animationView?.play()
        }
        
        private func startview() {
            view.addSubview(startBtn)
            startBtn.setTitle("Shablonlarni O'rganish", for: .normal)
            startBtn.setTitleColor(.white, for: .normal)
            startBtn.layer.borderColor = UIColor.lightGray.cgColor
            startBtn.layer.borderWidth = 1
            startBtn.layer.cornerRadius = 20
            startBtn.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            startBtn.titleLabel?.font = .boldSystemFont(ofSize: 20)
            startBtn.snp.makeConstraints { make in
                make.right.left.equalToSuperview().inset(15)
                make.top.equalTo(view.snp.centerY).multipliedBy(1.30)
                make.height.equalToSuperview().multipliedBy(0.08)
            }
            
            
            startBtn.addTarget(self, action: #selector(learnVC), for: .touchUpInside)
        
    }
   
    private func examView(){
        view.addSubview(examBtn)
        examBtn.setTitle("Imtihonni Boshlash", for: .normal)
        examBtn.setTitleColor(.white, for: .normal)
        examBtn.layer.borderColor = UIColor.lightGray.cgColor
        examBtn.layer.borderWidth = 1
        examBtn.layer.cornerRadius = 20
        examBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        examBtn.titleLabel?.font = .boldSystemFont(ofSize: 20)
        examBtn.snp.makeConstraints { make in
            make.right.left.equalToSuperview().inset(15)
            make.top.equalTo(startBtn.snp.bottom).offset(20)
            make.height.equalToSuperview().multipliedBy(0.08)
        }
        examBtn.addTarget(self, action: #selector(examVC), for: .touchUpInside)
        
    }
    
    
    @objc func learnVC(){
        let vc = LearnController()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Orqaga",
                                                        style: .plain,
                                                        target: nil,
                                                        action: nil)
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.isNavigationBarHidden =  false

        tabBarController?.tabBar.isHidden =  true
        
        
    }
    
    @objc func examVC(){
        let vc = QuizController()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Orqaga",
                                                           style: .plain,
                                                           target: nil,
                                                           action: nil)
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.isNavigationBarHidden =  false

        tabBarController?.tabBar.isHidden =  true

    }
}
