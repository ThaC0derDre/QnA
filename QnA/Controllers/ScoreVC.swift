//
//  ScoreVC.swift
//  QnA
//
//  Created by Andres Gutierrez on 2/17/22.
//

import UIKit

class ScoreVC: UIViewController {
    
    var scoreLabel: UILabel!
    var assessmentLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor    = .systemBackground
        configureLabels()
        
    }
    
    
    
    
    
    func configureLabels() {
        scoreLabel              = UILabel()
        scoreLabel.text         = "Score: 14/15 Correct!"
        scoreLabel.translatesAutoresizingMaskIntoConstraints    = false
        
        
        assessmentLabel         = UILabel()
        assessmentLabel.lineBreakMode   = .byWordWrapping
        assessmentLabel.text    = "You have proved to be professiant in Swift!"
        assessmentLabel.translatesAutoresizingMaskIntoConstraints   = false
        view.addSubviews(scoreLabel, assessmentLabel)
        
        
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 10),
            scoreLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10),
            scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -10),
            scoreLabel.heightAnchor.constraint(equalToConstant: 50),
            
            assessmentLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 10),
            assessmentLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10),
            assessmentLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -10),
            assessmentLabel.heightAnchor.constraint(equalToConstant: 40)
            
            
        ])
        
        
    }
}
