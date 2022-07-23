//
//  ShablonController.swift
//  We Learn Professions
//
//  Created by Umidjon Burhonov on 19/07/22.
//

import UIKit
import SnapKit
class ShablonController: UIViewController {
    
    var type = 0
    
    let scoreLabel = UILabel()
    let taskimage = UIImageView()
    let taskLabel = UILabel()
    let stackView = UIStackView()

    let answerButtona = MyButton(title: " ",
                                fontSize: 18,
                                bgcColor: .white.withAlphaComponent(0.5),
                                 titleColor: .white,
                                 radius: 18,
                                 borderWidth: 1)
    
    let answerButtonb = MyButton(title: " ", fontSize: 18, bgcColor: .white.withAlphaComponent(0.5), titleColor: .white, radius: 18, borderWidth: 1)
    
    let answerButtonc = MyButton(title: " ", fontSize: 18, bgcColor: .white.withAlphaComponent(0.5), titleColor: .white, radius: 18, borderWidth: 1)
   
    var score = 0
    
    var question = QuestionData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
        question.getType(type: type)
        initViews()
        initStackView()

        title = "To'g'risini Toping"
        updateUI()
        answerButtona.addTarget(self, action: #selector(answerButtonPressed(sender:)), for: .touchUpInside)
        answerButtonb.addTarget(self, action: #selector(answerButtonPressed(sender:)), for: .touchUpInside)
        answerButtonc.addTarget(self, action: #selector(answerButtonPressed(sender:)), for: .touchUpInside)
        
        
        
    }
    
    
    func initStackView(){
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.backgroundColor = .clear
        stackView.spacing = 10
        view.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.top.equalTo(taskLabel.snp.bottom).offset(5)
            make.right.left.equalToSuperview().inset(10)
            make.bottom.equalToSuperview().offset(-10)
        }
        stackView.addArrangedSubview(answerButtona)
        stackView.addArrangedSubview(answerButtonb)
        stackView.addArrangedSubview(answerButtonc)
    }
    
    
    private func initViews(){
        view.addSubview(scoreLabel)
        view.addSubview(taskimage)
        view.addSubview(taskLabel)
        view.addSubview(answerButtona)
        view.addSubview(answerButtonb)
        view.addSubview(answerButtonc)
        //scoreLabel.text = "\(score)"
        scoreLabel.textColor = .white
        scoreLabel.textAlignment = .center
        scoreLabel.font = .systemFont(ofSize: 25, weight: .bold)
        scoreLabel.backgroundColor = .clear
        scoreLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(10)
            make.right.left.equalToSuperview().inset(15)
            make.centerX.equalToSuperview()
            make.height.equalTo(20)
        }
        taskimage.image = UIImage(named: "default")?.withRenderingMode(.alwaysOriginal)
        taskimage.contentMode = .scaleAspectFit
        taskimage.backgroundColor = .clear
        taskimage.layer.cornerRadius = 50
        taskimage.snp.makeConstraints { make in
            make.right.left.equalToSuperview().inset(10)
            make.top.equalTo(scoreLabel.snp.bottom).offset(10)
            make.height.equalToSuperview().multipliedBy(0.3)
        }
        taskLabel.text = "Qaysi avtomobil uchun bu belgilarning ta'sir oralig'ida to'xtashga ruxsat etiladi?"
        taskLabel.textColor = .white
        taskLabel.backgroundColor = .clear
        taskLabel.textAlignment = .center
        taskLabel.numberOfLines = 0
        taskLabel.adjustsFontSizeToFitWidth = true
        taskLabel.font = .systemFont(ofSize: 22, weight: .heavy)
        taskLabel.snp.makeConstraints { make in
                make.top.equalTo(taskimage.snp.bottom).offset(5)
                make.right.left.equalToSuperview().inset(5)
                make.height.equalTo(140)
            }
        
//        else{
//            taskLabel.font = .systemFont(ofSize: 20, weight: .heavy)
//            taskLabel.snp.makeConstraints { make in
//                make.top.equalTo(taskimage.snp.bottom).offset(5)
//                make.right.left.equalToSuperview().inset(5)
//                make.height.equalTo(100)
//            }
//        }
        answerButtona.titleLabel?.textAlignment = .justified
        answerButtonb.titleLabel?.textAlignment = .justified
        answerButtonc.titleLabel?.textAlignment = .justified
        answerButtona.titleLabel?.adjustsFontSizeToFitWidth = true
        answerButtona.titleLabel?.numberOfLines = 3
        answerButtonb.titleLabel?.adjustsFontSizeToFitWidth = true
        answerButtonb.titleLabel?.numberOfLines = 3
        answerButtonc.titleLabel?.adjustsFontSizeToFitWidth = true
        answerButtonc.titleLabel?.numberOfLines = 3
        answerButtona.clipsToBounds = false
        answerButtonb.clipsToBounds = false
        answerButtonc.clipsToBounds = false
        answerButtona.titleLabel?.textAlignment = .center
        answerButtonb.titleLabel?.textAlignment = .center
        answerButtonc.titleLabel?.textAlignment = .center
       
            answerButtona.snp.makeConstraints { make in
                make.height.equalTo(80)
                make.left.equalToSuperview()
                make.right.equalToSuperview().inset(20)
            }
        
            answerButtonb.snp.makeConstraints { make in
                make.height.equalTo(80)
                make.right.equalToSuperview()
                make.left.equalToSuperview().inset(20)
            }
        
            answerButtonc.snp.makeConstraints { make in
                make.height.equalTo(80)
                make.left.equalToSuperview()
                make.right.equalToSuperview().inset(20)
            }
        
 

    }
    func showAlert(){
        let alertController = UIAlertController(title: "Imtihon yakunlandi!!!", message: "Hisob: \(question.getScore())", preferredStyle: .alert)
        let okAction = UIAlertAction(title: " OK ", style: .cancel) { (action) in
            self.scoreLabel.text = "Hisob: 0"
            self.answerButtona.backgroundColor = .white.withAlphaComponent(0.35)
            self.answerButtonb.backgroundColor = .white.withAlphaComponent(0.35)
            self.answerButtonc.backgroundColor = .white.withAlphaComponent(0.35)
            self.question.questionNumber = 0
            self.question.numberOfQuiz = 0
            self.question.score = 0
            self.question.isFinish = true
        }
        present(alertController, animated: true, completion: nil)
        
        alertController.addAction(okAction)
    }
    
    @objc func answerButtonPressed(sender: UIButton){
        let userAnswered = sender.currentTitle!
        let userChooseRight = question.checkAnswer(userAnswer: userAnswered)
        if userChooseRight {
            sender.backgroundColor = .green
//            playCorrectSound()
        } else {
            sender.backgroundColor = .red
//            incorrectSound()
        }
        question.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI(){
        scoreLabel.text = "Hisob:\(question.getScore())"
        if question.isFinish == false {
            answerButtona.setTitle(question.getAnswer()[0], for: .normal)
            answerButtonb.setTitle(question.getAnswer()[1], for: .normal)
            answerButtonc.setTitle(question.getAnswer()[2], for: .normal)
            taskimage.image = UIImage(named: question.getTaskImage())
            taskLabel.text = question.getQuestionLabel()
            answerButtona.backgroundColor = .white.withAlphaComponent(0.35)
            answerButtonb.backgroundColor = .white.withAlphaComponent(0.35)
            answerButtonc.backgroundColor = .white.withAlphaComponent(0.35)
        }else{
            showAlert()
//            congratulateSound()
        }
        
        
    }
}

