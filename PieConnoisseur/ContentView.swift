//
//  ContentView.swift
//  PieConnoisseur
//
//  Created by Henry Lee on 11/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ListItemView()
                ListItemView()
                ListItemView()
                ListItemView()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                        Text("Pie Connoisseur")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.leading)
                            
                }
                ToolbarItem(placement: .navigationBarTrailing){
                        Image(systemName: "gearshape")
                }
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
