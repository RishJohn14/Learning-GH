//
//  Recipe.swift
//  Recipe List App
//
//  Created by Rishabh Alexander John on 24/5/22.
//

import Foundation

class Recipe: Identifiable,Decodable
{
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]

}
