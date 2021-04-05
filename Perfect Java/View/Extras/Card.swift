//
//  Card.swift
//  Perfect Java
//
//  Created by Michael Ross on 4/2/21.
//

import SwiftUI

struct Card: View {
    
    var titleText: String
    var subtitleText: String
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 10.0).fill(Color("Light Salmon"))
                .frame(maxWidth: .infinity, maxHeight: 100)
            
            HStack {
            
                ZStack {
                
                    Circle().fill(Color.white)
                        .frame(width: 60)
                    
                    Image(systemName: "square.and.pencil")
                        .font(.title)
                    
                }
                
                VStack (alignment: .leading){
                    Text(titleText)
                        .bold()
                    
                    Text(subtitleText)
                }
                
                Spacer()
                
            }.padding()
            
        }.frame(maxWidth: .infinity, maxHeight: 100).padding(.horizontal)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(titleText: "Hello there", subtitleText: "This is our app")
    }
}
