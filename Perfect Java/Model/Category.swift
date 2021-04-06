//
//  Category.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/20/20.
//

import SwiftUI

struct Category: View, Identifiable {
    
    var id = UUID()
    var name: String
    var imageName: String
    var lessonChoice: LessonViewModel.LessonChoice
    
    var body: some View {
        
        switch(lessonChoice) {
            case .Variables:
                
                if(name == "Primitive Data Types") {
                    return AnyView(Primitive())
                } else if(name == "Declaring and Initializing Variables") {
                    return AnyView(InitializingVariables())
                } else if(name == "Introduction to Strings") {
                    return AnyView(Strings())
                }
            
            case .Arrays:
                if(name == "1-Dimensional Arrays") {
                    return AnyView(OneDArrays())
                } else if(name == "2-Dimensional Arrays") {
                    return AnyView(TwoDArrays())
                }
        
            case .ControlStatements:
                if(name == "If Statements") {
                    return AnyView(If())
                } else if(name == "If/Else If") {
                    return AnyView(IfElse())
                } else if(name == "While Loops") {
                    return AnyView(While())
                } else if(name == "Do While Loops") {
                    return AnyView(DoWhile())
                } else if(name == "For Loops") {
                    return AnyView(ForLoops())
                } else if(name == "Scopes") {
                    return AnyView(Scopes())
                }
        
            case .Methods:
                if(name == "Introduction to Methods") {
                    return AnyView(Methods())
                } else if(name == "Methods Continued") {
                    return AnyView(MethodsContinued())
                } else if(name == "Pass By Value") {
                    return AnyView(PassByValue())
                }
        
            case .Printing:
                
                if(name == "print() and println()") {
                    return AnyView(PrintStatements())
                } else if(name == "Arithmetic Expressions") {
                    return AnyView(ArithmeticExpressionsAndConcatenation())
                } else if(name == "Concatenation") {
                    return AnyView(Concatenation())
                } else if(name == "The Modulo Operator") {
                    return AnyView(Modulo())
                }
                
        }
        
        return AnyView(EmptyView())
    }
    
    
}
