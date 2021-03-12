//
//  CodeSnippet.swift
//  Perfect Java
//
//  Created by Michael Ross on 2/8/21.
//

import SwiftUI

struct CodeSnippet: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .background(Color("White Smoke"))
            .font(.system(size: 14 , design: .monospaced))
            .multilineTextAlignment(.leading)
    }
}

struct CodeSnippet_Previews: PreviewProvider {
    static var previews: some View {
        CodeSnippet(text: "Hello")
    }
}
