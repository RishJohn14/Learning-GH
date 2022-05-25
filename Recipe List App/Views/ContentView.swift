//
//  ContentView.swift
//  Recipe List App
//
//  Created by Rishabh Alexander John on 24/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    
    
    var body: some View {
        
        NavigationView{
            List(model.recipes)
            {r in
               
                NavigationLink(
                    destination: Recipe_Detail_View(recipe: r),
                    label:{
                               HStack(spacing: 15.0)
                               {
                                   Image(r.image).resizable().scaledToFill().frame(width: 50, height: 50, alignment: .center).clipped().cornerRadius(10)
                                
                                   Text(r.name)
                               }
                    })
                
                
                
            }.navigationBarTitle("All Recipes")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
