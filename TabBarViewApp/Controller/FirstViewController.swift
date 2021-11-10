//
//  FirstViewController.swift
//  TabBarViewApp
//
//  Created by Shreesha on 09/11/21.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var firstVCLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBar = tabBarController as! ViewController
        firstVCLabel.text = String(tabBar.number)
       
    }
   
    override func viewDidAppear(_ animated: Bool) {
        let tabBar = tabBarController as! ViewController
        firstVCLabel.text = String(tabBar.number)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
