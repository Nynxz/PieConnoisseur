//
//  ListItemView.swift
//  PieConnoisseur
//
//  Created by Henry Lee on 11/3/21.
//

import SwiftUI

struct ListItemView: View {

    var pie: Pie

    var body: some View {
            HStack{
                PieImageView(image: Image(pie.image))
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaleEffect(CGSize(width: 0.4, height: 0.4))
                    .padding()

                    .blur(radius: 0.5)
                ZStack(alignment: .leading) {
                    VStack(alignment: .leading){
                        Text(pie.pieName)
                            .font(.title)
                            .lineLimit(1)
                            .minimumScaleFactor(0.1)
                        Text(pie.description)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineLimit(2)
                    }

                }

                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.pink)
                    .font(.title)
                    
                    
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
            ForEach(["iPhone SE (2nd generation)", "iPhone XS Max", "iPad Pro (12.9-inch) (2nd generation)"], id: \.self) { deviceName in
                
                ListItemView(pie: loadPieData()[0])
                                .previewDevice(PreviewDevice(rawValue: deviceName))
                                .previewDisplayName(deviceName)

            }
    }
}
