//
//  NewViewController.swift
//  testStrupa
//
//  Created by Всеволод on 10.04.2021.
//

import UIKit

class NewViewController: UIViewController {

    let colorsName = [ "Красный": UIColor.red, "Синий": UIColor.blue, "Желтый": UIColor.yellow, "Зелёный": UIColor.green, "Фиолетовый": UIColor.purple]
//    let colorsOne = ["Красный", "Синий", "Желтый", "Зелёный", "Фиолетовый"]
//    let colorsTwo = [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.green, UIColor.purple]
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.isHidden = true
        button1.setTitleColor(.black, for: .normal)
        
        color.isHidden = true
        color.font = color.font.withSize(55)
        
    }
    
    @IBOutlet weak var color: UILabel!
    
    @IBOutlet weak var button1: UIButton!
  
    @IBAction func oneColllorButton(_ sender: UIButton) {
        color.text = colorsName.keys.randomElement()
        color.textColor = colorsName.values.randomElement()
        button1.setTitle(color.text, for: .normal)
       
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        
        color.text = colorsName.keys.randomElement()
        color.textColor = colorsName.values.randomElement()
        button1.setTitle(color.text, for: .normal)
        button1.isHidden = false
        color.isHidden = false
        sender.isHidden = true
        textLabel.isHidden = true
    }

    @IBOutlet weak var textLabel: UILabel!
    
    }
