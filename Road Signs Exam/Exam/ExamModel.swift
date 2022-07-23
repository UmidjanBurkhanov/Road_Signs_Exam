//
//  ExamModel.swift
//  We Learn Professions
//
//  Created by Umidjon Burhonov on 19/07/22.
//



import UIKit
import Lottie

struct QuizData{
    let data: [QuizDetailes] = [
        QuizDetailes(title: "Exam 1", titleImage: "1.1"),
        QuizDetailes(title: "Exam  2", titleImage: "2.2"),
        QuizDetailes(title: "Exam  3", titleImage: "2.3.1"),
        QuizDetailes(title: "Exam  4", titleImage: "3.1"),
        QuizDetailes(title: "Exam  5", titleImage: "3.28"),
        QuizDetailes(title: "Exam  6", titleImage: "4.3"),
        QuizDetailes(title: "Exam  7", titleImage: "4.8"),
        QuizDetailes(title: "Exam  8", titleImage: "5.6"),
        QuizDetailes(title: "Exam  9", titleImage: "5.44"),
        QuizDetailes(title: "Exam  10", titleImage: "2.6")    ]
    func getSize()->Int{
        return data.count
    }
    func getItem(index: Int)->QuizDetailes{
        return data[index]
    }
}


struct QuizDetailes{
    var title: String
    var titleImage: String
}

