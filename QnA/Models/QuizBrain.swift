//
//  Quiz.swift
//  QnA
//
//  Created by Andres Gutierrez on 2/11/22.
//

import Foundation

struct QuizBrain {
    
    // Replace ^ with /(
    let quiz = [
        Quiz(q: "What is this code an example of?", co: "let val = (Double)6", ch: [Choices(one: "a syntax issue", two: "typecasting", three: "assignment", four: "initialization")], a: "a syntax issue")]
//        Quiz(q: "What is the error in this code?", co: "let x = 5 /nguard x == 5 { return }", ch: ["The guard is missing the else.",
//             "Nothing is wrong.",
//             "The guard is missing a then.",
//             "The comparison is wrong."], a: "The guard is missing the else."),
//        Quiz(q: "What is the raw/underlying type of this enum?", co: "enum Direction {/n case north, south, east, west /n}", ch: ["There is none", "String", "Any", "Int"], a: "There is none"),
//        Quiz(q: "Why is dispatchGroup used in certain situations?", co: nil, ch: ["It allows multiple synchronous or asynchronous operations to run on different queues.", "It allows track and control execution of multiple operations together.", "It allows operations to wait for each other as desired.", "All of these answers."], a: "All of these answers."),
//        Quiz(q: "What is this code an example of?", co: "let val = 5 /nprint(“value is: ^val)“)", ch: ["string interpolation","string compilation", "method chaining","string concatenation"], a: "string interpolation"),
//        Quiz(q: "What are the contents of vals after this code is executed?", co: "var vals = [10, 2]/nvals.sort { (s1, s2) -> Bool in /n s1 > s2 /n}", ch: ["[10, 2]", "[2, 10]", "nil", "This code contains an error"], a: "[10, 2]"),
//        Quiz(q: "What does this code print?", co: "typealias Thing = [String:Any] /nvar stuff: Thing /nprint(type(of: stuff))", ch: ["Dictionary<String, Any>", "Dictionary", "ERROR", "Thing"], a: "Dictionary<String, Any>")
        
        /*Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: <#T##[String]#>, a: <#T##String#>),
    */
         
    
    var questionNumber  = 0
    
    
    mutating func correctAnswer(_ userAnswer: String) -> Bool {
        
        if quiz[questionNumber].answer  == userAnswer {
            return true
        }else {
            return false
        }
    }
    
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getChoices() -> [Choices] {
        return quiz[questionNumber].choices
    }
    
    
    func getProgress() -> Float {
        Float(questionNumber + 1) / Float(quiz.count)
    }
    
    
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber  += 1
        }else {
            questionNumber   =   0
        }
    }
}
