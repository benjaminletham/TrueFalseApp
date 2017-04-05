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
    var answers: [String: String]
    var correctAnswer: Int
    
    init(question: String, answers: [String: String], correctAnswer: Int) {
    self.question = question
    self.answers = answers
    self.correctAnswer = correctAnswer
        
    }
    
}

//Trivia Questions

let questionOne = Trivia(question: "In which year did BASE jumping begin?", answers: ["Option 1": "1969",
                                                                                      "Option 2": "1976",
                                                                                      "Option 3": "1978",
                                                                                      "Option 4": "1991"], correctAnswer: 2)

let questionTwo = Trivia(question: "Which location is the heart of U.S. big wall rock climbing", answers: ["Option 1": "Red Rock",
                                                                                      "Option 2": "Smith Rock",
                                                                                      "Option 3": "Yosemite",
                                                                                      "Option 4": "Malibu Beach"], correctAnswer: 3)

let questionThree = Trivia(question: "Teahupo is a famous wave for surfers. Where is it located?", answers: ["Option 1": "Bali",
                                                                                      "Option 2": "California",
                                                                                      "Option 3": "New Zealand",
                                                                                      "Option 4": "Tahiti"], correctAnswer: 4)




//Array of Trivia Questions

var triviaSet = [questionOne, questionTwo, questionThree]








