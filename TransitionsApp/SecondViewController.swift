//
//  SecondViewController.swift
//  TransitionsApp
//
//  Created by beck on 2023/07/02.
//

import Foundation
import UIKit

final class SecondViewController: UIViewController {
    @IBOutlet private weak var redButton: UIButton!
    @IBOutlet private weak var closeButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    var redColorButton = "赤"
    var buttonName = "戻る"
    var blueColorButton = "青"
    var greenColorButton = "緑"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondchangeNameButton()
        thirdchangeNameButton()
        forcecangeNameButton()
        fifthchangeNameButton()
        let selectedColor: colour = .blue
        self.view.backgroundColor = selectedColor.colorSetting
    }
    func secondchangeNameButton(){
        redButton.setTitle(redColorButton, for: .normal)
    }
    func thirdchangeNameButton(){
        closeButton.setTitle(buttonName, for: .normal)
    }
    func forcecangeNameButton(){
        blueButton.setTitle(blueColorButton, for: .normal)
    }
    func fifthchangeNameButton(){
        greenButton.setTitle(greenColorButton, for: .normal)
    }
    
    @IBAction func secondButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

enum colour{
    case blue,red,green
    var colorSetting: UIColor{
        switch self {
        case.blue:
            return.blue
        case .red:
            return.red
        case .green:
            return.green
        }
    }
}

