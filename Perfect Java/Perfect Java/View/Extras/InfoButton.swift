//
//  InfoButton.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/31/20.
//

import SwiftUI

struct InfoButton: View {
    
    var text: String
    var offset: Double
    
    var body: some View {
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 125, height: 50, alignment: .center)
                        .foregroundColor(Color("Kelly Green"))
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.white)
                        .frame(width: 120, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text(text)
                        .foregroundColor(.white)
                }
    }
}

struct InfoButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Spacer()
            InfoButton(text: "Integer", offset: 73.5)
            Spacer()
            InfoButton(text: "Character", offset: 0)
            Spacer()
        }
    }
}
