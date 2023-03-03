//
//  TutorialModel.swift
//  MobileDevAssignment2
//
//  Created by Emmanuel Ozioma on 19/05/2022.
//

class TutorialOverviewModel{
    
    private var tutorialTitle:String
    private var tutorialBody:String
    
    init(){
        tutorialTitle = ""
        tutorialBody = ""
    }
    
    open func setTutorialTitle(tutorialTitle:String) -> Void
    {
        self.tutorialTitle = tutorialTitle
    }
    
    open func getTutorialTitle() -> String{
        return tutorialTitle
    }
    
    open func setTutorialBody(tutorialBody: String) -> Void{
        self.tutorialBody = tutorialBody
    }
    
    open func getTutorialBody() -> String{
        return tutorialBody
    }
}
