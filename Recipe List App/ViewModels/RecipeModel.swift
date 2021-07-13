//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Matt Anderson on 01/07/2021.
//

import Foundation

class RecipeModel:ObservableObject {
    
    @Published var recipes = [Recipe] ()
    
    init() {
    //Create and instance of data service and get data
        
        self.recipes = DataService.getLocalData()
        
        
        //Set the reipes property
        
        
    }
    
}
