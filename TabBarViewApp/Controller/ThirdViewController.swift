//
//  ThirdViewController.swift
//  TabBarViewApp
//
//  Created by Shreesha on 09/11/21.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var thirdVCLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

      let tabBar = tabBarController as! ViewController
        thirdVCLabel.text = String(tabBar.number)
    }
    
    
    @IBAction func thirdVCButton(_ sender: UIButton) {
        if let thirdNumber = Int(thirdVCLabel.text!)
        {
            thirdVCLabel.text = String(thirdNumber + 1)
        }
        
    }
    override func viewWillAppear(_ animated: Bool) {
        let tabBar = tabBarController as! ViewController
          thirdVCLabel.text = String(tabBar.number)
    }
    override func viewDidDisappear(_ animated: Bool) {
        let tabBar = tabBarController as! ViewController
        tabBar.number = Int(thirdVCLabel.text!)!
    }
    
}
