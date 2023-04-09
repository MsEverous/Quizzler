//
//  Question.swift
//  Quizzler_9
//
//  Created by Лариса Терегулова on 02.04.2023.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}

struct QuestionS {
    let text: String
    let variable: [String]
    let answer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        variable = a
        answer = correctAnswer
    }
}
