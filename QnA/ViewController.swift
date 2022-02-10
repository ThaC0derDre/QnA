//
//  ViewController.swift
//  QnA
//
//  Created by Andres Gutierrez on 2/9/22.
//

import UIKit

class ViewController: UIViewController {

    var scoreLabel: UILabel!
    var qLabel: UILabel!
    var questionLabel: UILabel!
    var questionContainer: UIView!
    var answersContainerView: UIView!
    var progressBar: UIProgressView!
    var nextScreen: UIButton!
    
    
    var score   = 0
    var questionsRemaining  = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor    = .systemBlue
        configureLabels()
        configureConstraints()
    }

    
    func configureLabels() {
        scoreLabel                  = UILabel()
        scoreLabel.font             = UIFont.systemFont(ofSize: 18)
        scoreLabel.textAlignment    = .right
        scoreLabel.text             = "Score: \(score)"
        scoreLabel.translatesAutoresizingMaskIntoConstraints        = false
        view.addSubview(scoreLabel)
        
        questionContainer           = UIView()
        questionContainer.backgroundColor   = .systemGray
        questionContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(questionContainer)
        
        qLabel                      = UILabel()
        qLabel.textAlignment        = .center
        qLabel.text                 = "Q"
        qLabel.font                 = UIFont.systemFont(ofSize: 33)
        qLabel.translatesAutoresizingMaskIntoConstraints            = false
        questionContainer.addSubview(qLabel)
    }

    
    
    func configureConstraints() {
        
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -5),
            
            questionContainer.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 30),
            questionContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            questionContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            questionContainer.heightAnchor.constraint(equalToConstant: 134),
            
            
        ])
    }
}

