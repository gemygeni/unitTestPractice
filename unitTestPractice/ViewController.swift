//
//  ViewController.swift
//  unitTestPractice
//
//  Created by AHMED GAMAL  on 09/03/2023.
//

import UIKit
class Music{
    var cache : [[String : Any]]?
    
    @IBOutlet weak var TipTextField: UITextField!
    @IBOutlet weak var TipResult: UILabel!
    
    @IBAction func calcButtonPressd(_ sender: UIButton) {
        let Tipcalc = TipCalc()
        if let val = Double.init( TipTextField.text!)
           {
       let tip = Tipcalc.calcTip(amount: val, tipPer: 50.0)
            TipResult.text = "tip \(tip))"
        }
    }
    func fetchMusic(completion : @escaping ([[String : Any]]?, Error?)-> Void){
        guard cache == nil else{completion(cache , nil); return}
        let dataTask = URLSession.shared.dataTask(with: URL(string: "https://orangevalleycaa.org/api/music")!) { data, _, error in
            completion(self.parseJson(data: data!), nil)
        }
        dataTask.resume()
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

