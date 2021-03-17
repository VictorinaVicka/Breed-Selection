//
//  QuestionViewController.swift
//  WhichDogSuitsYouTest
//
//  Created by Виктория Воробьева on 20/11/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
// MARK: - IB Outlets

    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    
    @IBOutlet var questionProgressView: UIProgressView!
    
    // MARK: - Private Properties
    
    private var questions = Question.getQuestion()
    private var questionIndex = 0
    private var answersChoosen: [Answer] = []
    private var currentAnswers: [Answer] {
        return questions[questionIndex].answers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func singleButtonAnswerPressed(_ sender: UIButton) {
        guard let currentIndex = singleButtons.firstIndex(of: sender) else { return }
        let currentAnswer = currentAnswers[currentIndex]
        
        answersChoosen.append(currentAnswer)
        
        nextQuestion()
    }
    
    @IBAction func multipleAnswerButtonPressed() {
        for (multipleSwitch, answer) in zip(multipleSwitches, currentAnswers) {
            if multipleSwitch.isOn {
                answersChoosen.append(answer)
            }
        }
        
        nextQuestion()
    }
}

// MARK: - Private Methods

extension QuestionViewController {
    
    private func updateUI() {
        
        for stackView in [singleStackView, multipleStackView] {
            stackView?.isHidden = true
        }
        let currentQuestion = questions[questionIndex]
        questionLabel.text = currentQuestion.text
        
        let totalProgress = Float(questionIndex) / Float(questions.count)
        questionProgressView.setProgress(totalProgress, animated: true)
        
        title = "Вопрос № \(questionIndex + 1) из \(questions.count)"
        let currentAnswers = currentQuestion.answers
        
        switch currentQuestion.type {
        case .single:
            showSingleStackView(using: currentAnswers)
        case .multiple:
            showMultipleStackView(using: currentAnswers)
        }
         setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        if #available(iOS 13.0, *) {
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            navBarAppearance.backgroundColor = UIColor(cgColor: #colorLiteral(red: 1, green: 0.702499032, blue: 0.2866023481, alpha: 1).cgColor)
            navBarAppearance.titleTextAttributes = [.font: UIFont.boldSystemFont(ofSize: 18)]
            navBarAppearance.largeTitleTextAttributes = [.font: UIFont.boldSystemFont(ofSize: 26)]
            navigationController?.navigationBar.standardAppearance = navBarAppearance
            navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        }
    }
    
    private func showSingleStackView(using answers: [Answer]) {
        singleStackView.isHidden = false
        
        for (button, answer) in zip(singleButtons, answers) {
            button.setTitle(answer.text, for: .normal)
        }
    }
    
    private func showMultipleStackView(using answers: [Answer]) {
        multipleStackView.isHidden = false
        
        for (label, answer) in zip(multipleLabels, answers) {
            label.text = answer.text
        }
    }
}

 // MARK: - Navigation

extension QuestionViewController {
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "ThirdVC", sender: nil)
        }
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ThirdVC" else { return }
        let resultsVC = segue.destination as! ViewController
        resultsVC.responses = answersChoosen
    }
   
}
