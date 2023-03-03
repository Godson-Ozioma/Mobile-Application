//
//  AllGamesViewController.swift
//  MobileDevAssignment2
//
//  Created by Emmanuel Ozioma on 18/05/2022.
//

import UIKit

class AllGamesViewController : UIViewController{
    
    
//    @IBAction func foodChainBtnAction(_ sender: UIButton) {
//        print("Clicked!")
//    }
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate // ref to app delegate
    
//    let gameTitle:String = ""
    
    @IBOutlet weak var foodChainBtn: UIButton!
    
    @IBOutlet weak var chemReactBtn: UIButton!
    
    @IBOutlet weak var animalSoundBtn: UIButton!
    
    
    
    @IBAction func foodChainBtnAction(_ sender: UIButton) {
        
        appDelegate.screenModel.setScreenTitle(title: (foodChainBtn.titleLabel?.text!)!)
    }
    
    @IBAction func chemReactBtnAction(_ sender: UIButton) {
        updateScreenTitle(button: chemReactBtn)
    }
    
    @IBAction func animalSoundBtnAction(_ sender: UIButton) {
        updateScreenTitle(button: animalSoundBtn)
    }
    
    
    private func updateScreenTitle(button:UIButton) -> Void{
        appDelegate.screenModel.setScreenTitle(title: (button.titleLabel?.text!)!)
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
}
