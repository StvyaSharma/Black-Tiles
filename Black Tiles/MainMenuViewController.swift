//
//  MainMenuViewController.swift
//  Black Tiles
//
//  Created by Stvya Sharma on 20/05/21.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func newG(_ sender: Any) { //Loads game view controller
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

            let gameViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController

            self.present(gameViewController, animated:true, completion:nil)
      
    }


}
