//
//  CategoryDestination.swift
//  Perfect Java
//
//  Created by Michael Ross on 2/8/21.
//

import SwiftUI

struct CategoryDestination<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content
    }
}

struct CategoryDestination_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
