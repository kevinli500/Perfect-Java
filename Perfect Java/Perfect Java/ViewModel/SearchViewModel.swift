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
            Category(id: "Variables", imageName: ""),
            Category(id: "Printing", imageName: ""),
            Category(id: "Control Statements", imageName: ""),
            Category(id: "Methods", imageName: ""),
            Category(id: "Arrays", imageName: "")
        ]
    }
    
    
}
