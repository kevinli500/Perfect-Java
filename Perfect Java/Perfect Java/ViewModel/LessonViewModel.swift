//
//  LessonViewModel.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/22/20.
//

import Foundation

class LessonViewModel: ObservableObject {
    
    var lessonChoice: LessonChoice = LessonChoice.Variables
    
    @Published var categories: [Category] = []
    
    init() {
        switch lessonChoice {
        case LessonChoice.Variables:
            categories = [
                Category(id: "Primitive Data Types", imageName: "")
            ]
        default:
            categories = []
        }
            
    }
    
    
    enum LessonChoice {
        case Variables, Printing, ControlStatements, Methods, Arrays
    }
    
}
