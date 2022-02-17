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
    	Quiz(q: "What is the value of y?", co: "let x = [“1“, “2“].dropFirst()\nlet y = x[0]", ch: [Choices(one: "This code contains an error", two: "1", three: "2", four: "nil")], a: "This code contains an error"),
        Quiz(q: "What is the value of test in this code?", co: "var test = 1 == 1", ch: [Choices(one: "TRUE", two: "YES", three: "1", four: "This code contains an error")], a: "TRUE"),
        Quiz(q: "What is the value of y?", co: "var x: Int? \nlet y = x ?? 5", ch: [Choices(one: "5", two: "0", three: "nil", four: "This code contains an error")], a: "5"),
        Quiz(q: "What is the type of this function?", co: "func add(a: Int, b: Int) -> Int { return a+b }", ch: [Choices(one: "Int", two: "(Int, Int) -> Int", three: "Int<Optional>", four: "Functions don't have types.")], a: "(Int, Int) -> Int"),
        Quiz(q: "What is the correct way to call this function?", co: "func myFunc(_ a: Int, b: Int) -> Int {\nreturn a + b \n}", ch: [Choices(one: "myFunc(5, b: 6)", two: "myFunc(5, 6)", three: "myFunc(a: 5, b: 6)", four: "myFunc(a, b)")], a: "myFunc(5, b: 6)"),
        Quiz(q: "The Codable protocol is...", co: nil, ch: [Choices(one: "a combination of Encodable and Decodable", two: "not used with structs", three: "required of all classes", four: "automatically included in all classes")], a: "a combination of Encodable and Decodable"),
        Quiz(q: "What is the type of value1 in this code?", co: "let value1 = “^“test“.count)“", ch: [Choices(one: "String", two: "Int", three: "null", four: "test.count")], a: "String"),
        Quiz(q: "When a function takes a closure as a parameter, when do you want to mark it as escaping?", co: nil, ch: [Choices(one: "when it's executed after the function returns", two: "when it's scope is undefined", three: "when it's lazy loaded", four: "all of these answers")], a: "when it's executed after the function returns"),
        Quiz(q: "What's wrong with this code?", co: "class Person {\nvar name: String\nvar address: String\n}", ch: [Choices(one: "Person has no initializers.", two: "Person has no base class.", three: "var name is not formatted correctly.", four: "address is a keyword.")], a: "Person has no initializers."),
        Quiz(q: "What is the value of names after this code is executed?", co: "let names = [“Bear“, “Joe“, “Clark“]\nnames.map { (s) -> String in\nreturn s.uppercased()\n}", ch: [Choices(one: "[“BEAR“, “JOE“, “CLARK“]", two: "[“B“, “J“, “C“]", three: "Person has no initializers.", four: "This code contains an error.")], a: "Person has no initializers."),
        
        Quiz(q: "What describes this line of code?", co: "let val = 5", ch: [Choices(one: "a constant named val of type Int", two: "a variable named val of type item", three: "a constant named val of type Number", four: "a variable named val of type Int")], a: "a constant named val of type Int"),
        Quiz(q: "didSet and willSet are examples of _?", co: nil, ch: [Choices(one: "property observers", two: "key properties", three: "all of these answers", four: "newOld value calls")], a: "property observers"),
        Quiz(q: "What is wrong with this code?", co: "self.callback = {\n self.attempts += 1\nself.downloadFailed()\n}", ch: [Choices(one: "Use of self inside the closure causes retain cycle.", two: "You cannot assign a value to closure in this manner.", three: "You need to define the type of closure explicitly.", four: "There is nothing wrong with this code.")], a: "Use of self inside the closure causes retain cycle."),
        Quiz(q: "How many values does vals have after this code is executed?", co: "var vals = Set<String> = [“4“, “5“, “6“]\nvals.insert(“5“)", ch: [Choices(one: "three", two: "four", three: "eight", four: "This code contains an error")], a: "This code contains an error"),
        Quiz(q: "How can you avoid a strong reference cycle in a closure?", co: nil, ch: [Choices(one: "Use a capture list to set class instances of weak or unowned.", two: "You can't, there will always be a danger of strong reference cycles inside a closure.", three: "Initialize the closure as read-only.", four: "Declare the closure variable as lazy.")], a: "Use a capture list to set class instances of weak or unowned."),
        Quiz(q: "What is wrong with this code?", co: "if let s = String.init(“some string“) {\n print(s)\n}", ch: [Choices(one: "This String initializer does not return an optional.", two: "String does not have an initializer that can take a String.", three: "= is not a comparison.", four: "Nothing is wrong with this code.")], a: "This String initializer does not return an optional."),
        Quiz(q: "Which code snippet correctly creates a typealias closure?", co: nil, ch: [Choices(one: "typealias CustomClosure: () -> ()", two: "typealias CustomClosure { () -> () }", three: "typealias CustomClosure -> () -> ()", four: "typealias CustomClosure -> () {}")], a: "typealias CustomClosure: () -> ()"),
        Quiz(q: "How do you reference class members from within a class?", co: nil, ch: [Choices(one: "self", two: "instance", three: "class", four: "this")], a: "self"),
        Quiz(q: "All value types in Swift are _ under the hood?", co: nil, ch: [Choices(one: "structs", two: "classes", three: "optionals", four: "generics")], a: "structs"),
        Quiz(q: "How many times will this loop be executed?", co: "for i in 0...100 {\n print(i)\n}", ch: [Choices(one: "0", two: "101", three: "99", four: "100")], a: "101"),
        Quiz(q: "What can AnyObject represent?", co: nil, ch: [Choices(one: "an instance of any class", two: "an instance of function type", three: "all of these answers", four: "an instance of an optional type")], a: "all of these answers"),
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
