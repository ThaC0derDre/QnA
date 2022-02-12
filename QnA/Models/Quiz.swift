//
//  QuizBrain.swift
//  QnA
//
//  Created by Andres Gutierrez on 2/11/22.
//

import Foundation

struct Quiz {
    
    let question: String
    let code: String?
    let choices: [Choices]
    let answer: String
    
    init(q: String, co: String?, ch: [Choices], a: String) {
        question    = q
        code        = co
        choices     = ch
        answer      = a
    }
}

struct Choices {
    
    let optionOne: String
    let optionTwo: String
    let optionThree: String
    let optionFour: String
    
    init(one: String, two: String, three:String, four: String){
        optionOne   = one
        optionTwo   = two
        optionThree = three
        optionFour  = four
    }
}
