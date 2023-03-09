//
//  ViewController.swift
//  unitTestPractice
//
//  Created by AHMED GAMAL  on 09/03/2023.
//

import UIKit

class TipCalc{
    var defPerc = 0.75
    
    func calcTip(amount : Double, tipPer : Double) -> Double {
        return amount * tipPer/100.0
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

