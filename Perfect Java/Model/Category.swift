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
                
                return AnyView(EmptyView())
        
            case .ControlStatements:
                
                return AnyView(EmptyView())
        
            case .Methods:
                
                return AnyView(EmptyView())
        
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