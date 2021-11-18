//
//  ViewController.swift
//  Los dados
//
//  Created by David Viloria Ortega on 17/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceLeft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!
    
    var randomDiceIndexLeft: Int = 0
    var randomDiceIndexRight: Int = 0
    
    
    let diceImages: [String] = ["Dices1" , "Dices2", "Dices3", "Dices4",  "Dices5", "Dices6"]
    let nFaces: UInt32
    
    required init?(coder aDecoder: NSCoder) {
        nFaces = UInt32(diceImages.count)
        super.init(coder: aDecoder)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        generateRamdomDices()
    }
    
    @IBAction func rollPresedd(_ sender: UIButton) {
        generateRamdomDices()
    }
    
    func generateRamdomDices(){
        
        randomDiceIndexLeft = Int(arc4random_uniform(nFaces)) //Genera aleatoriamente el dado izquierdo
        randomDiceIndexRight = Int(arc4random_uniform(nFaces)) //Genera aleatoriamente el dado derecho
        
        diceLeft.image = UIImage(named: diceImages[randomDiceIndexLeft]) //Cambia la imagen del lado izquierdo
        diceRight.image = UIImage(named: diceImages[randomDiceIndexRight]) //Cambia la imagen del lado derecho
        
        
        UIView.animate(withDuration: 0.8, delay: 0.2, options: UIView.AnimationOptions.curveEaseIn) {
            <#code#>
        } completion: { <#Bool#> in
            <#code#>
        }

    }
}

