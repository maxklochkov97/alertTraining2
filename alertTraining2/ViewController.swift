//
//  ViewController.swift
//  alertTraining2
//
//  Created by Максим Клочков on 08.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Button
    @IBAction func startButton(_ sender: UIButton) {
        alertStart(title: "Введите слово leohl", message: "", style: .alert)
    }

    // MARK: Alert
    func alertStart(title: String, message: String, style: UIAlertController.Style) {

        let allerController = UIAlertController(title: title, message: message, preferredStyle: style)

        let actinon = UIAlertAction(title: "Ok", style: .default) { (actinon) in
            let text = allerController.textFields?.first
            let toString = String(text?.text ?? "")

            if toString.lowercased() == "leohl" {
                self.answerLabel.text = ("Верно: hello")
            } else {
                self.answerLabel.text = ("Ошибка ввода: \(toString)")
            }
        }

        allerController.addTextField(configurationHandler: nil)
        allerController.addAction(actinon)
        self.present(allerController, animated: true, completion: nil)
    }
}
