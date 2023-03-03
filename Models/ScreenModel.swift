//
//  ScreenModel.swift
//  MobileDevAssignment2
//
//  Created by Emmanuel Ozioma on 18/05/2022.
//

class ScreenModel{
    private var screenTitle:String;
    
    init(){
        self.screenTitle = ""
    }
    
    open func getScreenTitle() -> String{
        return self.screenTitle
    }
    
    open func setScreenTitle(title:String){
        self.screenTitle = title
    }
}
