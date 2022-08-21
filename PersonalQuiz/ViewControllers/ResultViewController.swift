//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by brubru on 18.08.2022.
//

import UIKit

 class ResultViewController: UIViewController {
    
    // 1. Передать массив с ответами на экран с результатами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты в соотвствии с этим животным
    // 4. Избавиться от кнопки возврата назад на экране результатов

    @IBOutlet var resultBarButtons: UINavigationItem!

    @IBOutlet var animalDescriptionLabel: UILabel!
    @IBOutlet var whoYouAreLabel: UILabel!
    
    
    var answears: [Any] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultBarButtons.hidesBackButton = true
        calculateAnimal(for: answears)
        
    }
 
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    private func calculateAnimal (for answears: [Any]){
        var rabbitsCount = 0
        var dogsCount = 0
        var catsCount = 0
        var turtlesCount = 0
        
        for answear in answears {
            if answear as? AnimalType == .dog {
                dogsCount += 1
            } else if answear as? AnimalType == .cat {
                catsCount += 1
            } else if answear as? AnimalType == .rabbit {
                rabbitsCount += 1
            } else if answear as? AnimalType == .turtle {
                turtlesCount += 1
            }
        }
        
        if dogsCount > catsCount && dogsCount > rabbitsCount && dogsCount > turtlesCount {
            animalDescriptionLabel.text = "Вы - 🐶"
          } else if catsCount > dogsCount && catsCount > rabbitsCount && catsCount > turtlesCount {
              animalDescriptionLabel.text = "Вы - 🐱"
          } else if rabbitsCount > dogsCount && rabbitsCount > catsCount && rabbitsCount > turtlesCount {
              animalDescriptionLabel.text = "Вы - 🐰"
          } else if turtlesCount > dogsCount && turtlesCount > catsCount && turtlesCount > rabbitsCount {
              animalDescriptionLabel.text = "Вы - 🐢"
          }
        
        print(rabbitsCount, dogsCount, catsCount, turtlesCount)
    }
     
    
    
}
