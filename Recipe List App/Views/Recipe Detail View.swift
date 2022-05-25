//
//  Recipe Detail View.swift
//  Recipe List App
//
//  Created by Rishabh Alexander John on 25/5/22.
//

import SwiftUI

struct Recipe_Detail_View: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
            
            VStack{
                
                //MARK: Recipe Image
                Image(recipe.image).resizable().scaledToFill()
                
                //MARK: Ingredients
                
                VStack(alignment: .leading)
                {
                    Text("Ingredients")
                    .font(.headline)
                    .padding(.bottom)
                    
                    
                    ForEach(recipe.ingredients, id:\.self)
                    {i in
                        Text("- "+i)
                    }
                }
                .padding(.trailing)
                
                //MARK: Divider
                Divider()
                
                //MARK: Directions
                
                VStack(alignment: .leading)
                {
                    Text("Directions")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom,5)
                    
                    ForEach(0..<recipe.directions.count, id:\.self)
                    {d in
                        
                        Text(String(d+1)+": "+recipe.directions[d]).padding(.bottom,2)
                    }
                
                }
                .padding(.horizontal)
                
            }
            
            
        }.navigationBarTitle(recipe.name)
    }
}

struct Recipe_Detail_View_Previews: PreviewProvider {
    static var previews: some View {
        
        //Create a dummy recipe and pass it into the detail view so that we can see a preview
        
        let model = RecipeModel()
        
        Recipe_Detail_View(recipe: model.recipes[0])
    }
}
