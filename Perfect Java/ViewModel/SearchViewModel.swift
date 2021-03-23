//
//  SearchViewModel.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/21/20.
//

import Foundation

class SearchViewModel: ObservableObject {
    
    @Published var categories: [Category] = []
    
    init() {
        categories = [
            Category(name: "Variables", imageName: "multiply.square", lessonChoice: .Variables),
            Category(name: "Printing", imageName: "square.and.pencil", lessonChoice: .Printing),
            Category(name: "Control Statements", imageName: "eject", lessonChoice: .ControlStatements),
            Category(name: "Methods", imageName: "wand.and.rays", lessonChoice: .Methods),
            Category(name: "Arrays", imageName: "doc.on.doc", lessonChoice: .Arrays)
        ]
    }
    
    
}
