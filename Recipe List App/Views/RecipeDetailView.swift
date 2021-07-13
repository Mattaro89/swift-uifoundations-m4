//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Matt Anderson on 06/07/2021.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    
    var body: some View {
        ScrollView {
            
            VStack (alignment: .leading) {
                
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                //MARK: Ingredinets
                VStack(alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)
                    .padding(.horizontal)
                    
                    
                
                ForEach(recipe.ingredients, id:\.self) { item in
                    Text("•" + item)
                        .padding(.horizontal)
               
                }
                    
                }
                
                
                //Mark: Divider
                Divider()
                
                
                //MARK:Directions
            VStack(alignment: .leading) {
            Text("Directions")
                .font(.headline)
                .padding([.leading, .bottom, .trailing], 5)
                
                ForEach(0..<recipe.directions.count, id:\.self) { index in
                    
                    Text(String(index+1) + ". " + recipe.directions[index])
                        .padding([.leading, .bottom, .trailing], 5)
                }
            }
            }
            }
        .navigationBarTitle(recipe.name)
        }
        
        
        }
    

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        //create a dummy recipe and pass it in to the detail so that we can see a preciew
        
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}

