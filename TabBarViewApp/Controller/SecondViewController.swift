//
//  SecondViewController.swift
//  TabBarViewApp
//
//  Created by Shreesha on 09/11/21.
//

import UIKit
protocol PassDataBack {
    func passData(num: Int)
}
class SecondViewController: UIViewController {
    var delegate: PassDataBack?
    @IBOutlet weak var secondVCNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBar = tabBarController as! ViewController
        secondVCNumber.text = String(tabBar.number)
    }
    override func viewWillAppear(_ animated: Bool) {
        let tabBar = tabBarController as! ViewController
        secondVCNumber.text = String(tabBar.number)
   }
    
    @IBAction func incrementValue(_ sender: UIButton) {
        if let number = Int(secondVCNumber.text!){
            secondVCNumber.text = String(number + 1)
            
        }

    }
    override func viewDidDisappear(_ animated: Bool) {
        let tabBar = tabBarController as! ViewController
        tabBar.number = Int(secondVCNumber.text!)!
        
            
      }
   
    
}
