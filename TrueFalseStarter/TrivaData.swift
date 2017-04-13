//
//  File.swift
//  TrueFalseStarter
//
//  Created by Benjamin on 2/04/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation
import UIKit


class Trivia {
    var question: String
    var answerOption1: String
    var answerOption2: String
    var answerOption3: String
    var answerOption4: String
    var correctAnswer: String
    
    init(question: String, answerOption1: String, answerOption2: String, answerOption3: String, answerOption4: String, correctAnswer: String) {
        
    self.question = question
    self.answerOption1 = answerOption1
    self.answerOption2 = answerOption2
    self.answerOption3 = answerOption3
    self.answerOption4 = answerOption4
    self.correctAnswer = correctAnswer
        
    }
    
}


//Trivia Questions

class Questions {
    var question: [Trivia] =
        [Trivia(question: "In which year did BASE jumping begin?",
                answerOption1: "1969",
                answerOption2: "1976",
                answerOption3: "1978",
                answerOption4: "1991",
                correctAnswer: "answerOption2"),
         Trivia(question: "Which location is the heart of U.S. big wall rock climbing",
                answerOption1: "Red Rock",
                answerOption2: "Smith Rock",
                answerOption3: "Yosemite",
                answerOption4: "Malibu Beach",
                correctAnswer: "answerOption3"),
         Trivia(question: "Teahupo is a famous wave for surfers. Where is it located?",
                answerOption1: "Bali",
                answerOption2: "California",
                answerOption3: "New Zealand",
                answerOption4: "Tahiti",
                correctAnswer: "answerOption4")
    ]
    
    
}

let questionOne = Trivia(question: "In which year did BASE jumping begin?",
                         answerOption1: "1969",
                         answerOption2: "1976",
                         answerOption3: "1978",
                         answerOption4: "1991",
                         correctAnswer: "answerOption2")

let questionTwo = Trivia(question: "Which location is the heart of U.S. big wall rock climbing",
                         answerOption1: "Red Rock",
                         answerOption2: "Smith Rock",
                         answerOption3: "Yosemite",
                         answerOption4: "Malibu Beach",
                         correctAnswer: "answerOption3")

let questionThree = Trivia(question: "Teahupo is a famous wave for surfers. Where is it located?",
                           answerOption1: "Bali",
                           answerOption2: "California",
                           answerOption3: "New Zealand",
                           answerOption4: "Tahiti",
                         correctAnswer: "answerOption4")

let questionFour = Trivia(question: "In skydiving; you can only make one mistake.",
                          answerOption1: "True",
                          answerOption2: "False",
                          answerOption3: "",
                          answerOption4: "",
                         correctAnswer: "answerOption2")

let questionFive = Trivia(question: "The best surfer in the water is the one having the most fun.",
                          answerOption1: "True",
                          answerOption2: "False",
                          answerOption3: "",
                          answerOption4: "",
                          correctAnswer: "answerOption1")




//Array of Trivia Questions

var triviaSet = [questionOne, questionTwo, questionThree]









