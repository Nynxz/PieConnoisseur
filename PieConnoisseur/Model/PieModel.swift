//
//  PieModel.swift
//  PieConnoisseur
//
//  Created by Henry Lee on 11/3/21.
//

import Foundation
import SwiftUI

struct Pie:Codable, Hashable{
    
    var bakeryID: Int
    var pieName: String
    var image: String
//    var image: Image {
//        return Image(imageName)
//    }
    //Maybe
    var imageReference: String
    var ratingOutOf5: Float
    var description: String
    
}

func loadPieData() -> [Pie] {
    
    print("Loading Pie JSON")
    
    let data: Data
    guard let url = Bundle.main.url(forResource: "pies.json", withExtension: nil)
    else{
        fatalError("Could not find pies.json")
    }
    do{
        data = try Data(contentsOf: url)
    }
    catch{
        fatalError("Could not load pies.json data")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode([Pie].self, from: data)
    } catch {
        fatalError("Could not parse pies.json data")
    }

}
