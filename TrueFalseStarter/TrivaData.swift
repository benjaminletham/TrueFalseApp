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
    var answer: Bool
    
    init(question: String, answer: Bool) {
    self.question = question
    self.answer = answer
        
    }
    
}

//Trivia Questions

let questionOne = Trivia(question: "Extreme sport is good for your health", answer: true)
let questionTwo = Trivia(question: "Rock climbing in Yosemite is warmer than Patagonia", answer: true)
let questionThree = Trivia(question: "Infinite Tumbling in paragliding is not a very risky manouvre", answer: false)
let questionFour = Trivia(question: "The best surfer in the world is the one having the most fun", answer: true)
let questionFive = Trivia(question: "You only get one chance to make a mistake whilst skydiving", answer: false)
let questionSix = Trivia(question: "New Zealand offers some of the best and most uncrowded waves in the world", answer: true)
let questionSeven = Trivia(question: "Wingsuit basejumpers need to fly fast in order to maintain a safe reserve of potential energy", answer: true)
let questionEight = Trivia(question: "Cross-country paragliders can fly hundreds of kilometers during a single flight", answer: true)
let questionNine = Trivia(question: "The life expectancy of a new base-jumper is less than two years", answer: false)
let questionTen = Trivia(question: "The record for climbing The Nose on El Capitan in Yosemite is currently less than two hours", answer: false)
let questionEleven = Trivia(question: "Speedflying is a type of paragliding", answer: true)

//Array of Trivia Questions

let triviaQuestions = [questionOne, questionTwo, questionThree, questionFour, questionFive, questionSix, questionSeven, questionEight, questionNine, questionTen, questionEleven]






