//
//  ViewController.swift
//  QnA
//
//  Created by Andres Gutierrez on 2/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    var quizBrain       = QuizBrain()
    
    var scoreLabel: UILabel!
    //    var qLabel: UILabel!
    var questionLabel: UILabel!
    var questionCode: UILabel!
    var questionContainer: UIView!
    var answersContainerView: UIView!
    var progressBar: UIProgressView!
    var buttonContainer: UIView!
    
    var optionOne: SAButton!
    var optionTwo: SAButton!
    var optionThree: SAButton!
    var optionFour: SAButton!
    
    
    var score                   = 0
    var questionsRemaining      = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor    = .systemBackground
        configureLabels()
        configureConstraints()
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text              = quizBrain.getQuestionText()
        progressBar.progress            = quizBrain.getProgress()
        
        let choiceArray                 = quizBrain.getChoices()
        optionOne.setTitle(choiceArray[0].optionOne, for: .normal)
        optionTwo.setTitle(choiceArray[0].optionTwo, for: .normal)
        optionThree.setTitle(choiceArray[0].optionThree, for: .normal)
        optionFour.setTitle(choiceArray[0].optionFour, for: .normal)
        
        questionCode.text               = quizBrain.getCo()
        
    }
    
    
    
    @objc func buttonOnePressed() {
        guard let userAnswer  = optionOne.titleLabel?.text else { fatalError("Error grabbing title from button")}
        if quizBrain.correctAnswer(userAnswer) {
            score += 1
        }
        else {
            print ("Incorrect!")
            //capture this Question to suggest review
        }
        quizBrain.nextQuestion()
        updateUI()
    }
    
    
    
    @objc func buttonTwoPressed() {
        guard let userAnswer  = optionTwo.titleLabel?.text else { fatalError("Error grabbing title from button")}
        if quizBrain.correctAnswer(userAnswer) {
            score += 1
        }
        else {
            print ("Incorrect!")
        }
        quizBrain.nextQuestion()
        updateUI()
    }
    
    
    @objc func buttonThreePressed() {
        guard let userAnswer  = optionThree.titleLabel?.text else { fatalError("Error grabbing title from button")}
        if quizBrain.correctAnswer(userAnswer) {
            score += 1
        }
        else {
            print ("Incorrect!")
        }
        quizBrain.nextQuestion()
        updateUI()
    }
    
    
    
    @objc func buttonFourPressed() {
        guard let userAnswer  = optionFour.titleLabel?.text else { fatalError("Error grabbing title from button")}
        if quizBrain.correctAnswer(userAnswer) {
            score += 1
        }
        else {
            print ("Incorrect!")
        }
        quizBrain.nextQuestion()
        updateUI()
    }
    
    
    
    func configureLabels() {
        scoreLabel                          = UILabel()
        scoreLabel.font                     = UIFont.systemFont(ofSize: 18)
        scoreLabel.textAlignment            = .right
        scoreLabel.text                     = "Score: \(score)"
        scoreLabel.translatesAutoresizingMaskIntoConstraints        = false
        view.addSubview(scoreLabel)
        
        questionContainer                   = UIView()
        //        questionContainer.backgroundColor   = .systemGray
        questionContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(questionContainer)
        
        questionLabel                       = UILabel()
        questionLabel.font                  = UIFont(name: "Helvetica Neue", size: 24)
        questionLabel.numberOfLines         = 0
        questionLabel.lineBreakMode         = .byWordWrapping
        //        questionLabel.backgroundColor       = .systemPink
        questionLabel.translatesAutoresizingMaskIntoConstraints     = false
        
        
        questionCode                        = UILabel()
        questionCode.text                   = nil
        questionCode.numberOfLines          = 0
        questionCode.minimumScaleFactor     = 0.90
        questionCode.adjustsFontSizeToFitWidth  = true
//                questionCode.backgroundColor        = .systemGreen
        questionCode.font                   = UIFont(name: "Menlo", size: 20)
        questionCode.translatesAutoresizingMaskIntoConstraints  = false
        questionContainer.addSubviews(questionLabel, questionCode)
        
        
        optionOne                           = SAButton(title: "None Of The Above")
        optionOne.addTarget(self, action: #selector(buttonOnePressed), for: .touchUpInside)
        optionTwo                           = SAButton(title: "No Issue")
        optionTwo.addTarget(self, action: #selector(buttonTwoPressed), for: .touchUpInside)
        optionThree                         = SAButton(title: "All Of The Above")
        optionThree.addTarget(self, action: #selector(buttonThreePressed), for: .touchUpInside)
        optionFour                          = SAButton(title: "Compiler Error")
        optionFour.addTarget(self, action: #selector(buttonFourPressed), for: .touchUpInside)
        
        buttonContainer                     = UIView()
        //        buttonContainer.backgroundColor     = .systemBrown
        buttonContainer.translatesAutoresizingMaskIntoConstraints   = false
        view.addSubview(buttonContainer)
        buttonContainer.addSubviews(optionOne, optionTwo, optionThree, optionFour)
        
        progressBar                         = UIProgressView(progressViewStyle: .bar)
        progressBar.progress                = 0.7
        progressBar.progressTintColor       = .systemFill
        progressBar.translatesAutoresizingMaskIntoConstraints       = false
        view.addSubview(progressBar)
    }
    
    
    
    
    func configureConstraints() {
        
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -5),
            
            questionContainer.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 30),
            questionContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            questionContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            questionContainer.heightAnchor.constraint(equalToConstant: 350),
            
            questionLabel.topAnchor.constraint(equalTo: questionContainer.topAnchor),
            questionLabel.leadingAnchor.constraint(equalTo: questionContainer.leadingAnchor),
            questionLabel.trailingAnchor.constraint(equalTo: questionContainer.trailingAnchor),
            questionLabel.heightAnchor.constraint(equalToConstant: 90),
            
            questionCode.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 10),
            questionCode.leadingAnchor.constraint(equalTo: questionContainer.leadingAnchor),
            questionCode.trailingAnchor.constraint(equalTo: questionContainer.trailingAnchor),
            questionCode.bottomAnchor.constraint(equalTo: questionContainer.bottomAnchor),
            
            progressBar.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            progressBar.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 20),
            progressBar.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -20),
            progressBar.heightAnchor.constraint(equalToConstant: 20),
            
            buttonContainer.bottomAnchor.constraint(equalTo: progressBar.topAnchor),
            buttonContainer.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 5),
            buttonContainer.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -5),
            buttonContainer.heightAnchor.constraint(equalToConstant: 300),
            
            optionOne.topAnchor.constraint(equalTo: buttonContainer.topAnchor),
            optionOne.leadingAnchor.constraint(equalTo: buttonContainer.leadingAnchor),
            optionOne.trailingAnchor.constraint(equalTo: buttonContainer.trailingAnchor),
            optionOne.heightAnchor.constraint(equalToConstant: 64),
            
            optionTwo.topAnchor.constraint(equalTo: optionOne.bottomAnchor, constant: 8),
            optionTwo.leadingAnchor.constraint(equalTo: buttonContainer.leadingAnchor),
            optionTwo.trailingAnchor.constraint(equalTo: buttonContainer.trailingAnchor),
            optionTwo.heightAnchor.constraint(equalToConstant: 64),
            
            optionThree.topAnchor.constraint(equalTo: optionTwo.bottomAnchor, constant: 8),
            optionThree.leadingAnchor.constraint(equalTo: buttonContainer.leadingAnchor),
            optionThree.trailingAnchor.constraint(equalTo: buttonContainer.trailingAnchor),
            optionThree.heightAnchor.constraint(equalToConstant: 64),
            
            optionFour.topAnchor.constraint(equalTo: optionThree.bottomAnchor, constant: 8),
            optionFour.leadingAnchor.constraint(equalTo: buttonContainer.leadingAnchor),
            optionFour.trailingAnchor.constraint(equalTo: buttonContainer.trailingAnchor),
            optionFour.heightAnchor.constraint(equalToConstant: 64),
            
            
            
            
        ])
    }
}

