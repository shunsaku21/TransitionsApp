//
//  SecondViewController.swift
//  TransitionsApp
//
//  Created by beck on 2023/07/02.
//

import Foundation
import UIKit
enum Colour{
    case blue
    case red
    case green
    
    var colorSetting: UIColor {
        switch self {
        case .blue:
            return.blue
        case .red:
            return.red
        case .green:
            return.green
        }
    }
}

final class SecondViewController: UIViewController {
    @IBOutlet private weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var cioseedButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    var redColorButton = "赤"
    var buttonName = "戻る"
    var blueColorButton = "青"
    var greenColorButton = "緑"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redchangeNameButton()
        closechangeNameButton()
        bluecangeNameButton()
        greenchangeNameButton()
    }
    func redchangeNameButton() {
        redButton.setTitle(redColorButton, for: .normal)
    }
    
    @IBAction func blueButton(_ sender: Any) {
        let selectedColor: Colour = .blue
                self.view.backgroundColor = selectedColor.colorSetting
    }
    
    @IBAction func redButton(_ sender: Any) {
        let selectedColor: Colour = .red
                self.view.backgroundColor = selectedColor.colorSetting
    }
    
    @IBAction func greenButton(_ sender: Any) {
        let selectedColor: Colour = .green
                self.view.backgroundColor = selectedColor.colorSetting
    }
    func closechangeNameButton() {
        cioseedButton.setTitle(buttonName, for: .normal)
    }
    func bluecangeNameButton() {
        blueButton.setTitle(blueColorButton, for: .normal)
    }
    func greenchangeNameButton() {
        greenButton.setTitle(greenColorButton, for: .normal)
    }
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
