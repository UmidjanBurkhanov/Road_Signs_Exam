//
//  ViewController.swift
//  We Learn Professions
//
//  Created by Umidjon Burhonov on 16/07/22.
//

import UIKit
import SnapKit
import Lottie

class ViewController: UIViewController {
    var animationView: AnimationView?
    var textlabel = UILabel()
    var gobutton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initanimation()
        initViews()
        
        
    }
    
    func  initViews() {
        
        view.addSubview(textlabel)
        textlabel.text = "Let's learn together"
        textlabel.textColor  = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        textlabel.numberOfLines = 0
        textlabel.font = .boldSystemFont(ofSize: 30)
        textlabel.font = .systemFont(ofSize: 60)
        textlabel.textAlignment = .left
        textlabel.snp.makeConstraints { make in
            make.top.equalTo(view.snp.centerY).multipliedBy(1.30)
            make.left.equalToSuperview().inset(20)
            make.width.equalTo(view.snp.width).multipliedBy(0.60)
            
        }
        
        view.addSubview(gobutton)
        gobutton.setTitle("let's Go...", for: .normal)
        gobutton.setTitleColor(.white, for: .normal)
        gobutton.layer.cornerRadius = 14
        gobutton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        gobutton.titleLabel?.font = .systemFont(ofSize: 30)
        
        gobutton.snp.makeConstraints { make in
            make.top.equalTo(view.snp.centerY).multipliedBy(1.45)
            make.right.equalToSuperview()
            make.width.equalTo(view.snp.width).multipliedBy(0.4)
            make.height.equalTo(50)
        }
        
        gobutton.addTarget(self, action: #selector(goViewController), for: .touchUpInside)
  
    }
    
 
    override func viewWillAppear(_ animated: Bool) {
        animationView?.play()
    }

    private func initanimation() {
        animationView = .init(name : "75702-job-proposal-review-animation")
        animationView?.frame = view.bounds
        animationView?.loopMode = .loop
        animationView?.animationSpeed = 1
        view.addSubview(animationView!)
        animationView?.play()
    }

    
    @objc func goViewController() {
        let vc = UINavigationController(rootViewController: TabBarController())
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true , completion: nil)
        
        
print("Go")
    }
    
}

