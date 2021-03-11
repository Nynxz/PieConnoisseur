//
//  PieImageView.swift
//  PieConnoisseur
//
//  Created by Henry Lee on 11/3/21.
//

import SwiftUI

struct PieImageView: View {
    var body: some View {
        Image("stone_artisan_pie")
            .resizable()
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,  lineWidth: 5))
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 10)
            .padding(20)
    }
}

struct PieImageView_Previews: PreviewProvider {
    static var previews: some View {
        PieImageView()
    }
}
