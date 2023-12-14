//
//  ViewController.swift
//  Procrastinator
//
//  Created by Geralyn Chong on 14/12/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ChangeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        let text = changeColor()
        view.backgroundColor = randomColor
        NameTitle.textColor = text
    }
    
    @IBOutlet weak var NameTitle: UILabel!
   
    @IBAction func ResetBackgroundColor(_ sender: UIButton) {
        view.backgroundColor = UIColor.white
        NameTitle.textColor = UIColor.black
    }
    
    func changeColor() -> UIColor{
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
}


