//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Rishabh Alexander John on 24/5/22.
//

import Foundation

class RecipeModel: ObservableObject
{
    @Published var recipes = [Recipe]()
    
    init()
    {
        self.recipes = DataService.getLocalData()
    }
}
