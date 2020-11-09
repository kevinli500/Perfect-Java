//
//  LessonView.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/22/20.
//

import SwiftUI

struct LessonView: View {
    
    var lessonChoice: LessonViewModel.LessonChoice
    
    var body: some View {
        TabView {
            Text("Hello, World!")
            Text("Goodbye, World")
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct LessonView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView(lessonChoice: LessonViewModel.LessonChoice.Variables)
    }
}
