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
                Category(name: "Primitive Data Types", imageName: "doc.circle", lessonChoice: .Variables),
                Category(name: "Introduction to Strings", imageName: "doc.circle", lessonChoice: .Variables),
                Category(name: "Declaring and Initializing Variables", imageName: "doc.circle", lessonChoice: .Variables)
            ]
            break
        case .Printing:
            categories = [
                Category(name: "print() and println()", imageName: "doc.circle", lessonChoice: .Printing),
                Category(name: "Arithmetic Expressions", imageName: "doc.circle", lessonChoice: .Printing),
                Category(name: "The Modulo Operator", imageName: "doc.circle", lessonChoice: .Printing),
                Category(name: "Concatenation", imageName: "doc.circle", lessonChoice: .Printing)
            ]
            break
        case .ControlStatements:
            categories = [
                Category(name: "If Statements", imageName: "doc.circle", lessonChoice: .ControlStatements),
                Category(name: "If/Else If", imageName: "doc.circle", lessonChoice: .ControlStatements),
                Category(name: "While Loops", imageName: "doc.circle", lessonChoice: .ControlStatements),
                Category(name: "Do While Loops", imageName: "doc.circle", lessonChoice: .ControlStatements),
                Category(name: "For Loops", imageName: "doc.circle", lessonChoice: .ControlStatements),
                Category(name: "Scopes", imageName: "doc.circle", lessonChoice: .ControlStatements),
            ]
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
