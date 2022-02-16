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
        Quiz(q: "What is the raw/underlying type of this enum?", co: "enum Direction {\ncase north, south, east, west \n}", ch: [Choices(one: "Any", two: "There is none", three: "String", four: "Int")], a: "There is none"),
        Quiz(q: "Why is dispatchGroup used in certain situations?", co: nil, ch: [Choices(one: "It allows multiple synchronous or asynchronous operations to run on different queues.", two: "It allows track and control execution of multiple operations together.", three: "It allows operations to wait for each other as desired.", four: "All of these answers.")], a: "All of these answers."),
        Quiz(q: "What is this code an example of?", co: "let val = 5 \nprint(“value is: ^val)“)", ch: [Choices(one: "string interpolation", two: "string compilation", three: "method chaining", four: "string concatenation")], a: "string interpolation"),
        Quiz(q: "What are the contents of vals after this code is executed?", co: "var vals = [10, 2]\nvals.sort { (s1, s2) -> Bool in \n s1 > s2 \n}", ch: [Choices(one: "[10, 2]", two: "[2, 10]", three: "nil", four: "This code contains an error")], a: "[10, 2]"),
        Quiz(q: "What does this code print?", co: "typealias Thing = [String:Any] \nvar stuff: Thing \nprint(type(of: stuff))", ch: [Choices(one: "Dictionary<String, Any>", two: "Dictionary", three: "ERROR", four: "Thing")], a: "Dictionary<String, Any>"),
    	Quiz(q: "What is the value of y?", co: "let x = ["1", "2"].dropFirst()\nlet y = x[0]", ch: [Choices(one: "This code contains an error", two: "1", three: "2", four: "nil")], a: <#T##String#>),
        Quiz(q: "What is the value of test in this code?", co: "var test = 1 == 1", ch: [Choices(one: "TRUE", two: "YES", three: "1", four: "This code contains an error")], a: <#T##String#>),
        Quiz(q: "What is the value of y?", co: "var x: Int? \nlet y = x ?? 5", ch: [Choices(one: "5", two: "0", three: "nil", four: "This code contains an error")], a: <#T##String#>),
        Quiz(q: "What is the type of this function?", co: "func add(a: Int, b: Int) -> Int { return a+b }", ch: [Choices(one: "Int", two: "(Int, Int) -> Int", three: "Int<Optional>", four: "Functions don't have types.")], a: "(Int, Int) -> Int"),
        Quiz(q: "What is the correct way to call this function?", co: "func myFunc(_ a: Int, b: Int) -> Int {\nreturn a + b \n}", ch: [Choices(one: "myFunc(5, b: 6)", two: "myFunc(5, 6)", three: "myFunc(a: 5, b: 6)", four: "myFunc(a, b)")], a: <#T##String#>),
        Quiz(q: "The Codable protocol is...", co: nil, ch: [Choices(one: "a combination of Encodable and Decodable", two: "not used with structs", three: "required of all classes", four: "automatically included in all classes")], a: "a combination of Encodable and Decodable"),
        Quiz(q: "What is the type of value1 in this code?", co: "let value1 = “^“test“.count)“", ch: [Choices(one: "String", two: "Int", three: "null", four: "test.count")], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
        Quiz(q: <#T##String#>, co: <#T##String?#>, ch: [Choices(one: <#T##String#>, two: <#T##String#>, three: <#T##String#>, four: <#T##String#>)], a: <#T##String#>),
    ]
        
         
    
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
