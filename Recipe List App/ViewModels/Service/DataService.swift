//
//  DataService.swift
//  Recipe List App
//
//  Created by Matt Anderson on 01/07/2021.
//

import Foundation

class DataService {
    
    
   static func getLocalData() -> [Recipe] {
        // Parse locacl json file
        let  pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //Check path string is not nil
        guard pathString != nil else {
            return [Recipe]()
        }
        
        
        // Get a url path to the Json file
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            //create a data object
            let decoder = JSONDecoder()
        
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                for r in recipeData {
                    r.id = UUID()
                }
                return recipeData
            }
            catch {
             print(error)
                
            }
        
        }
        
        catch {
    print(error)
        }
       
        return [Recipe]()
        
    
    }
    }

