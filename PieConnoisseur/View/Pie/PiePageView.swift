//
//  FoodPageView.swift
//  PieConnoisseur
//
//  Created by Henry Lee on 11/3/21.
//

import SwiftUI

struct PiePageView: View {
    var body: some View {
        VStack{
            //Location of Bakeries (Left Swipe 'Card View' if Multiple)
            PieImageView()
                
                
            
            //Square Rounded Edge Image of Pie  ?Multiple?
            //Name of Pie
            Text("Primary")
                .font(.title)
                .bold()
            //Recommendation
            //Story
        }
    }
}

struct PiePageView_Previews: PreviewProvider {
    static var previews: some View {
        PiePageView()
    }
}
