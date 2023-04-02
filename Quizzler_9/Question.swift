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
