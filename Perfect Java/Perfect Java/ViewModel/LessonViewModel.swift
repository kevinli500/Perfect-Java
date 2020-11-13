//
//  LessonViewModel.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/22/20.
//

import Foundation

class LessonViewModel: ObservableObject {
    
    var lessonChoice: LessonChoice
    
    @Published var categories: [Category] = []
    
    init(lessonChoice: LessonChoice) {
        
        print("Initialized")
        
        self.lessonChoice = lessonChoice
        
        switch self.lessonChoice {
        case .Variables:
            categories = [
                Category(name: "Primitive Data Types", imageName: "doc.circle.fill", lessonChoice: .Variables),
                Category(name: "Introduction to Strings", imageName: "doc.circle", lessonChoice: .Variables),
                Category(name: "Declaring and Intializing Variables", imageName: "doc.circle", lessonChoice: .Variables)
            ]
            break
        case .Printing:
            categories = []
            break
        case .ControlStatements:
            categories = []
            break
        case .Methods:
            categories = []
            break
        case .Arrays:
            categories = []
            break
        }
            
    }
    
    
    enum LessonChoice : String {
        case Variables, Printing, ControlStatements, Methods, Arrays
    }
    
}
