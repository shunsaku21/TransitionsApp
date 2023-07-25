//
//  SecondViewController.swift
//  TransitionsApp
//
//  Created by beck on 2023/07/02.
//

import Foundation
import UIKit

final class SecondViewController: UIViewController {
    @IBOutlet private weak var colorButton: UIButton!
    @IBOutlet private weak var closeButton: UIButton!
    
    var nameButton = "カラー"
    var buttonName = "戻る"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondchangeNameButton()
        thirdchangeNameButton()
        
    }
    func secondchangeNameButton(){
        colorButton.setTitle(nameButton, for: .normal)
    }
    func thirdchangeNameButton(){
        closeButton.setTitle(buttonName, for: .normal)
    }

    @IBAction func buttonTapped(_ sender: Any) {
        view.backgroundColor = UIColor.yellow
    }
    
    @IBAction func secondButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}




