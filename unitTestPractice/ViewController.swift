//
//  ViewController.swift
//  unitTestPractice
//
//  Created by AHMED GAMAL  on 09/03/2023.
//

import UIKit
class Music{
    func fetchMusic(completion : @escaping ([[String : Any]]?, Error)-> Void){
        
    }
    
    func parseJson (data : Data) -> [[String : Any]]?{
        return try? JSONSerialization.jsonObject(with: data, options: []) as? [[String : Any]]
    }
}

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

