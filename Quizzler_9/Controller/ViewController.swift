//
//  ViewController.swift
//  Quizzler_9
//
//  Created by Лариса Терегулова on 02.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var questonLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeQueston()
        changeAnswer()
    }

    @IBAction func answerButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = .green
            sender.layer.cornerRadius = 15
        } else {
            sender.backgroundColor = .red
            sender.layer.cornerRadius = 15
        }
        
        quizBrain.nextQuestion()
    
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(changeQueston), userInfo: nil, repeats: false)
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(changeAnswer), userInfo: nil, repeats: false)
    }
    
    @objc func changeQueston() {
        questonLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        firstButton.backgroundColor = .clear
        secondButton.backgroundColor = .clear
        thirdButton.backgroundColor = .clear
        firstButton.layer.cornerRadius = 0
        secondButton.layer.cornerRadius = 0
        thirdButton.layer.cornerRadius = 0
    }
    
    @objc func changeAnswer() {
        let numberQueston = quizBrain.numberQueston
        let firstAnswer = quizBrain.quiz[numberQueston].variable[0]
        let secondAnswer = quizBrain.quiz[numberQueston].variable[1]
        let thirdAnswer = quizBrain.quiz[numberQueston].variable[2]
        firstButton.setTitle(firstAnswer, for: .normal)
        secondButton.setTitle(secondAnswer, for: .normal)
        thirdButton.setTitle(thirdAnswer, for: .normal)
    }
}
