//
//  Category.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/20/20.
//

import SwiftUI

struct Category: Identifiable {
    
    var id = UUID()
    var name: String
    var imageName: String
    var lessonChoice: LessonViewModel.LessonChoice
    var destination = Primitive()
    
}
