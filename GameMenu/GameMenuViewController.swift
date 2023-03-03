//
//  GameMenuViewController.swift
//  MobileDevAssignment2
//
//  Created by Emmanuel Ozioma on 18/05/2022.
//

import UIKit

class GameMenuViewController : UIViewController{
    let appDelegate = UIApplication.shared.delegate as! AppDelegate // ref to app delegate
    
    @IBOutlet weak var gameTitle: UILabel! // title of the game
    
    @IBAction func playGameBtnAction(_ sender: UIButton) {
        navigateToGamePlay();
    }
    
    // determine which storyboard will be navigated to depending on the title of the screen.
    func navigateToGamePlay(){
        if(gameTitle.text == "Food Chain"){
            performSegue(withIdentifier: "menuToFoodChainsSegue", sender: self)
        }else if(gameTitle.text == "Chemical Reactions"){
            performSegue(withIdentifier: "menuToChemReactSegue", sender: self)
        }else if(gameTitle.text == "Animal Sound"){
            performSegue(withIdentifier: "menuToAnimalSoundView", sender: self)
        }else if(gameTitle.text == "Diagrams"){
            
        }else{
            // display error message
        }
    }
    
    @IBAction func tutorialBtnAction(_ sender: UIButton) {
        navigateToTutorials()
    }
    
    func navigateToTutorials(){
        if(gameTitle.text == "Food Chain"){
            appDelegate.tutorialOverviewModel.setTutorialTitle(tutorialTitle: TutorialManager.foodChainTutorialTitle())
            appDelegate.tutorialOverviewModel.setTutorialBody(tutorialBody: TutorialManager.foodChainTutorialBody())
        }else if(gameTitle.text == "Chemical Reactions"){
            appDelegate.tutorialOverviewModel.setTutorialBody(tutorialBody: TutorialManager.chemicalReactionsTutorialBody())
            appDelegate.tutorialOverviewModel.setTutorialTitle(tutorialTitle: TutorialManager.chemicalReactionsTutorialTitle())
        }else if(gameTitle.text == "Animal Sound"){
            appDelegate.tutorialOverviewModel.setTutorialTitle(tutorialTitle: TutorialManager.animalSoundTutorialTitle())
            appDelegate.tutorialOverviewModel.setTutorialBody(tutorialBody: TutorialManager.animalSoundTutorialBody())
            
        }else if(gameTitle.text == "Diagrams"){
            
        }else{
            // display error message
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameTitle.text = appDelegate.screenModel.getScreenTitle();
        
    }
    
}
