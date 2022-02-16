//
//  Quiz.swift
//  QnA
//
//  Created by Andres Gutierrez on 2/11/22.
//

import Foundation

struct QuizBrain {
    
    // Replace '^' with '/('
    let quiz = [
        Quiz(q: "What is this code an example of?", co: "let val = (Double)6", ch: [Choices(one: "a syntax issue", two: "typecasting", three: "assignment", four: "initialization")], a: "a syntax issue"),
        Quiz(q: "What is the error in this code?", co: "let x = 5 \nguard x == 5 { return }", ch: [Choices(one: "The guard is missing the else.", two: "Nothing is wrong.", three: "The guard is missing a then.", four: "The comparison is wrong.")], a: "The guard is missing the else."),
        Quiz(q: "What is the raw/underlying type of this enum?", co: "enum Direction {\n case north, south, east, west \n}", ch: [Choices(one: "Any", two: "There is none", three: "String", four: "Int")], a: "There is none"),
        Quiz(q: "Why is dispatchGroup used in certain situations?", co: nil, ch: [Choices(one: "It allows multiple synchronous or asynchronous operations to run on different queues.", two: "It allows track and control execution of multiple operations together.", three: "It allows operations to wait for each other as desired.", four: "All of these answers.")], a: "All of these answers."),
        Quiz(q: "What is this code an example of?", co: "let val = 5 \nprint(“value is: ^val)“)", ch: [Choices(one: "string interpolation", two: "string compilation", three: "method chaining", four: "string concatenation")], a: "string interpolation"),
        Quiz(q: "What are the contents of vals after this code is executed?", co: "var vals = [10, 2]\nvals.sort { (s1, s2) -> Bool in \n s1 > s2 \n}", ch: [Choices(one: "[10, 2]", two: "[2, 10]", three: "nil", four: "This code contains an error")], a: "[10, 2]"),
        Quiz(q: "What does this code print?", co: "typealias Thing = [String:Any] \nvar stuff: Thing \nprint(type(of: stuff))", ch: [Choices(one: "Dictionary<String, Any>", two: "Dictionary", three: "ERROR", four: "Thing")], a: "Dictionary<String, Any>")]
        
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
    
    func getCo() -> String? {
        if quiz[questionNumber].code != nil {
            return quiz[questionNumber].code
        }else {
            return nil
        }
        
    }
    
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber  += 1
        }else {
            questionNumber   =   0
        }
    }
}
