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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultBarButtons.hidesBackButton = true

    }
 
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
}
