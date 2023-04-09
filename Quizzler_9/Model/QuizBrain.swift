//
//  QuizBrain.swift
//  Quizzler_9
//
//  Created by Dinar Teregulov on 05.04.2023.
//

import Foundation

struct QuizBrain {
//    let quizTrueOrFalse = [Question(q: "A slug's blood is green.", a: "True"),
//                Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
//                Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
//                Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
//                Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
//                Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
//                Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
//                Question(q: "Google was originally called 'Backrub'.", a: "True"),
//                Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
//                Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
//                Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
//                Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")]
    
    let quiz =  [QuestionS(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        QuestionS(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        QuestionS(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        QuestionS(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        QuestionS(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        QuestionS(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        QuestionS(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        QuestionS(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        QuestionS(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        QuestionS(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")]
    
    var numberQueston = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[numberQueston].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getProgress() -> Float {
        return Float(numberQueston + 1) / Float(quiz.count)
    }
    
    func getQuestionText() -> String {
        return quiz[numberQueston].text
    }
    
    mutating func nextQuestion() {
        if numberQueston + 1 < quiz.count {
            self.numberQueston += 1
        } else {
            self.numberQueston = 0
            score = 0
        }
    }
    
    mutating func getScore() -> Int {
     return score
    }
}
