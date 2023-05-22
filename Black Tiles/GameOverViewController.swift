//
//  GameOverViewController.swift
//  Black Tiles
//
//  Created by Stvya Sharma on 20/05/21.
//

import UIKit

class GameOverViewController: UIViewController {

    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
        
        self.showAnimate()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        UserDefaults.standard.set(false, forKey: "govo")
    }
    
    func showAnimate() //Introduces subview with animation
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    func removeAnimate() //Revmoves subview with animation
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
            }, completion:{(finished : Bool)  in
                if (finished)
                {
                   
                    self.view.removeFromSuperview()
                        
                }
        });
    }

    @IBAction func mainMenu(_ sender: Any) { //Returns to main menu
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let mmViewController = storyBoard.instantiateViewController(withIdentifier: "mainMenu") as! MainMenuViewController

        self.present(mmViewController, animated:true, completion:nil)
    }
    
    @IBAction func playAgain(_ sender: Any) { //Removes subview
        //self.view.removeFromSuperview()
        self.removeAnimate()
    }
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var rows: UILabel!
    
}


