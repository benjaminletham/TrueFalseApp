//
//  ViewController.swift
//  TrueFalseStarter
//
//  Created by Pasan Premaratne on 3/9/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox

class ViewController: UIViewController {
    
    let questionsPerRound = triviaSet.count
    var allQuestions = triviaSet
    var questionsAsked: Int = 0
    var correctQuestions: Int = 0
    var indexOfSelectedQuestion: Int = 0
    var gameSound: SystemSoundID = 0
    var usedQuestions: NSMutableArray = []
    
    @IBOutlet weak var questionField: UILabel!
    @IBOutlet weak var answerValidation: UILabel!
    @IBOutlet weak var answerOption1: UIButton!
    @IBOutlet weak var answerOption2: UIButton!
    @IBOutlet weak var answerOption3: UIButton!
    @IBOutlet weak var answerOption4: UIButton!
    @IBOutlet weak var nextQuestion: UIButton!
    
    

      override func viewDidLoad() {
        super.viewDidLoad()
        loadGameStartSound()
        // Start game
        playGameStartSound()
        
        displayQuestion()
    
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayQuestion() {
     indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: triviaSet.count)
     let randomQuestion = triviaSet[indexOfSelectedQuestion]
        let currentQuestion = randomQuestion
        questionField.text = currentQuestion.question
        nextQuestion.isHidden = true
        
        answerOption1.setTitle(currentQuestion.answerOption1, for: .normal)
        answerOption2.setTitle(currentQuestion.answerOption2, for: .normal)
        answerOption3.setTitle(currentQuestion.answerOption3, for: .normal)
        answerOption4.setTitle(currentQuestion.answerOption4, for: .normal)
        
     
        
}
    
    @IBAction func checkAnswer(sender: UIButton) {
        
        questionsAsked += 1
        
        let selectedQuestion = triviaSet[indexOfSelectedQuestion]
        let correctAnswer = selectedQuestion.correctAnswer
        
       
        
      
        if (sender.titleLabel!.text == correctAnswer) {
            correctQuestions += 1
            answerValidation.text = "Correct!"
            disableButtons()
            
        } else {
            answerValidation.text = "Sorry, that's not it."
            disableButtons()
        }
        
       
        
     
    
        
    }
    
    func disableButtons() {
        answerOption1.isUserInteractionEnabled = false
        answerOption2.isUserInteractionEnabled = false
        answerOption3.isUserInteractionEnabled = false
        answerOption4.isUserInteractionEnabled = false
    }
    
    func enableButtons() {
        answerOption1.isUserInteractionEnabled = true
        answerOption2.isUserInteractionEnabled = true
        answerOption3.isUserInteractionEnabled = true
        answerOption4.isUserInteractionEnabled = true
    }
    
    
  
    
    
    
 /*   func displayScore() {
        // Hide the answer buttons
        answerOption1.isHidden = true
        answerOption2.isHidden = true
        answerOption3.isHidden = true
        answerOption4.isHidden = true
        
        // Display play again button
        nextQuestion.isHidden = false
        
        questionField.text = "Way to go!\nYou got \(correctQuestions) out of \(questionsPerRound) correct!"
        
    }
    
  */
    

    
    
    
    /*
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        // Increment the questions asked counter
        questionsAsked += 1
        
        let selectedQuestionDict = triviaSet[indexOfSelectedQuestion]
        let correctAnswer = selectedQuestionDict.correctAnswer
 
 */

        
        //**** NEED TO ADD MORE BUTTONS AND REFACTOR LOGIC FOR CORREC/WRONG ANSWERS ****
        
        /*
        if (sender === trueButton &&  correctAnswer == "True") || (sender === falseButton && correctAnswer == "False") {
            correctQuestions += 1
            questionField.text = "Correct!"
        } else {
            questionField.text = "Sorry, wrong answer!"
        }
        
        loadNextRoundWithDelay(seconds: 2)
    }
 
 */
    

     //**** CODE TO BE REFACTORED ****

      /*

    func nextRound() {
        if questionsAsked == questionsPerRound {
            // Game is over
            displayScore()
        } else {
            // Continue game
            displayQuestion()
        }
    }
    
    @IBAction func playAgain() {
        // Show the answer buttons
        trueButton.isHidden = false
        falseButton.isHidden = false
        
        questionsAsked = 0
        correctQuestions = 0
        nextRound()
    }
    
 

    //
    // MARK: Helper Methods
    
    func loadNextRoundWithDelay(seconds: Int) {
        // Converts a delay in seconds to nanoseconds as signed 64 bit integer
        let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
        // Calculates a time value to execute the method given current time and delay
        let dispatchTime = DispatchTime.now() + Double(delay) / Double(NSEC_PER_SEC)
        
        // Executes the nextRound method at the dispatch time on the main queue
        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
            self.nextRound()
        }
    }
 
 */
    
    func loadGameStartSound() {
        let pathToSoundFile = Bundle.main.path(forResource: "GameSound", ofType: "wav")
        let soundURL = URL(fileURLWithPath: pathToSoundFile!)
        AudioServicesCreateSystemSoundID(soundURL as CFURL, &gameSound)
    }
    
    func playGameStartSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
}
 
 



