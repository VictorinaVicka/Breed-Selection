//
//  Question.swift
//  WhichDogSuitsYouTest
//
//  Created by Виктория Воробьева on 18/11/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

extension Question {
    
    static func getQuestion() -> [Question] {
        return [
            Question(
                text: "Вы живете в:",
                type: .single,
                answers: [
                    Answer(text: "Маленькой квартире", breed: [.yokshireTerrier]),
                    Answer(text: "Большой квартире", breed: [.germanSpitz, .frenchBulldog, .jackRussellTerrier, .welshCorgiPembroke]),
                    Answer(text: "В съемной квартире", breed: [.chihuahua]),
                    Answer(text: "Доме", breed: [.centralasianShepherd, .germanShepherd, .siberianHusky, .labradorRetweiler])
                ]
            ),
            Question(
                text: "Рядом с Вашей квартирой/домом есть парк?",
                type: .single,
                answers: [
                    Answer(text: "Нет", breed: [.yokshireTerrier, .chihuahua]),
                    Answer(text: "Есть сквер", breed: [.germanSpitz, .frenchBulldog]),
                    Answer(text: "Есть площадка для собак", breed: [.jackRussellTerrier, .welshCorgiPembroke, .labradorRetweiler]),
                    Answer(text: "Есть парк", breed: [.centralasianShepherd, .germanShepherd, .siberianHusky])
                ]
            ),
            Question(
                text: "Каждый день Вы можете тратить на собаку:",
                type: .single,
                answers: [
                    Answer(text: "Около 1 часа", breed: [.yokshireTerrier, .germanShepherd]),
                    Answer(text: "От 1 до 2 часов", breed: [.frenchBulldog, .chihuahua]),
                    Answer(text: "От 2 до 3 часов", breed: [.welshCorgiPembroke, .labradorRetweiler, .jackRussellTerrier]),
                    Answer(text: "Более 3 часов", breed: [.centralasianShepherd, .germanShepherd, .siberianHusky])
                ]
            ),
            Question(
                text: "Вы являетесь 'начинающим' собаководом?",
                type: .single,
                answers: [
                    Answer(text: "Да", breed: [.chihuahua, .yokshireTerrier, .frenchBulldog, .labradorRetweiler]),
                    Answer(text: "Была собака в детстве", breed: [.welshCorgiPembroke, .germanSpitz]),
                    Answer(text: "Да, но работал с ними", breed: [.frenchBulldog, .labradorRetweiler]),
                    Answer(text: "Нет", breed: [.germanShepherd, .jackRussellTerrier, .centralasianShepherd, .siberianHusky])
                ]
            ),
            Question(
                text: "Кем прежде всего для Вас будет собака?",
                type: .single,
                answers: [
                    Answer(text: "Партнером для спорта", breed: [.jackRussellTerrier, .siberianHusky]),
                    Answer(text: "Охранником", breed: [.germanShepherd, .centralasianShepherd]),
                    Answer(text: "Компаньоном по жизни", breed: [.germanSpitz, .chihuahua, .yokshireTerrier, .frenchBulldog, .welshCorgiPembroke]),
                    Answer(text: "Повадырем", breed: [.labradorRetweiler]),
                ]
            ),
            Question(
                text: "Для перевозки собаки у Вас:",
                type: .single,
                answers: [
                    Answer(text: "Компактный автомобиль", breed: [.jackRussellTerrier, .germanSpitz]),
                    Answer(text: "Автомобиль среднего размера", breed: [.labradorRetweiler, .siberianHusky, .welshCorgiPembroke]),
                    Answer(text: "Большой автомобиль", breed: [.labradorRetweiler, .centralasianShepherd, .siberianHusky, .germanShepherd]),
                    Answer(text: "Нет своего автомобиля", breed: [.chihuahua, .yokshireTerrier, .frenchBulldog]),
                ]
            ),
            Question(
                text: "Какого размера собаку планируете завести?",
                type: .single,
                answers: [
                    Answer(text: "Маленькую", breed: [.chihuahua, .yokshireTerrier]),
                    Answer(text: "Среднюю", breed: [.welshCorgiPembroke, .germanSpitz]),
                    Answer(text: "Большую", breed: [.labradorRetweiler, .centralasianShepherd, .siberianHusky, .germanShepherd]),
                    Answer(text: "Пока не знаю", breed: [.jackRussellTerrier, .frenchBulldog]),
                ]
            ),
            Question(
                text: "Выберете черты характера:",
                type: .multiple,
                answers: [
                    Answer(text: "Бдительный", breed: [.chihuahua, .jackRussellTerrier, .centralasianShepherd, .germanShepherd, .germanSpitz, .siberianHusky, .welshCorgiPembroke, .frenchBulldog]),
                    Answer(text: "Дружелюбный", breed: [.welshCorgiPembroke, .siberianHusky, .labradorRetweiler]),
                    Answer(text: "Умный", breed: [.centralasianShepherd, .siberianHusky, .germanShepherd, .welshCorgiPembroke]),
                    Answer(text: "Независимый", breed: [.jackRussellTerrier, .yokshireTerrier, .germanSpitz, .labradorRetweiler, .siberianHusky, .welshCorgiPembroke, .frenchBulldog]),
                    Answer(text: "Активный", breed: [.jackRussellTerrier, .labradorRetweiler, .yokshireTerrier]),
                    Answer(text: "Послушный", breed: [.frenchBulldog])
                ]
            )
        ]
    }
}
