//
//  ViewController.swift
//  TransitionsApp
//
//  Created by beck on 2023/07/02.
//

import UIKit

final class FirstViewController: UIViewController {

    //  Outlet
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var nextButton: UIButton!
    
    //  プロパティ
    var nameLabel = "A画面"
    var butoonName = "次の画面へ"
    
    //  ライフサイクル
    override func viewDidLoad() {
        super.viewDidLoad()
        changeNameButton()
        changeLabel()
        
        //  関数
    }
    func changeNameButton() {
        nextButton.setTitle(butoonName, for: .normal)
    }
    func changeLabel(){
        titleLabel.text = nameLabel
        titleLabel.font = titleLabel.font.withSize(40)
        titleLabel.textAlignment = NSTextAlignment.center
    }
    
    @IBAction func nextButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondView") as! SecondViewController
        self.present(secondViewController, animated: true)
    }
        
    }
    




//  Extension

