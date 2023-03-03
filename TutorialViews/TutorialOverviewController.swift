//
//  TutorialOverviewController.swift
//  MobileDevAssignment2
//
//  Created by Emmanuel Ozioma on 19/05/2022.
//

import UIKit

class TutorialOverviewController : UIViewController{
    let appDelegate = UIApplication.shared.delegate as! AppDelegate // ref to app delegate
    
    @IBOutlet weak var tutorialTitle: UILabel!
    
    @IBOutlet weak var tutorialBody: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tutorialBody.numberOfLines = 0
        
        tutorialTitle.text = appDelegate.tutorialOverviewModel.getTutorialTitle()
        tutorialBody.text = appDelegate.tutorialOverviewModel.getTutorialBody()
    }
}
