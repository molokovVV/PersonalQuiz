//
//  Question.swift
//  PersonalQuiz
//
//  Created by Виталик Молоков on 22.06.2020.
//  Copyright © 2020 Виталик Молоков. All rights reserved.
//

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
}

extension Question {
    static func getQuestions() -> [Question] {
        return [
            Question(
                text: "Какую пищу Вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(text: "Стейк", type: .dog),
                    Answer(text: "Рыба", type: .cat),
                    Answer(text: "Морковь", type: .rabbit),
                    Answer(text: "Кукуруза", type: .turtle),
                ]
            ),
            Question(
                  text: "Что Вам нравится больше?",
                  type: .multiple,
                  answers: [
                      Answer(text: "Плавать", type: .dog),
                      Answer(text: "Спать", type: .cat),
                      Answer(text: "Обниматься", type: .rabbit),
                      Answer(text: "Есть", type: .turtle),
                  ]
              ),
            Question(
                  text: "Любите ли Вы поездки на машине?",
                  type: .ranged,
                  answers: [
                      Answer(text: "Ненавижу", type: .cat),
                      Answer(text: "", type: .rabbit),
                      Answer(text: "", type: .turtle),
                      Answer(text: "Обожаю", type: .dog),
                  ]
              )
        ]
    }
}
