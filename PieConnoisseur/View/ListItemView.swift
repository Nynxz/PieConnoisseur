//
//  ListItemView.swift
//  PieConnoisseur
//
//  Created by Henry Lee on 11/3/21.
//

import SwiftUI

struct ListItemView: View {
    var body: some View {
        
            HStack{
                VStack(alignment: .leading){
                    Text("Primay")
                        .font(.title)
                    Text("Secondary")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.pink)
                    
                    
            }
            .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView()
    }
}
