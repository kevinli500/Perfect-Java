//
//  LessonView.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/22/20.
//

import SwiftUI

struct LessonView: View {
    
    @ObservedObject var viewModel: LessonViewModel
    
    var lessonChoice: LessonViewModel.LessonChoice
    
    init(lessonChoice: LessonViewModel.LessonChoice) {
        viewModel = LessonViewModel(lessonChoice: lessonChoice)
        self.lessonChoice = lessonChoice
        print(lessonChoice)
        print(viewModel.categories.count)
    }
    
    var body: some View {
        if #available(iOS 14.0, *) {
            ScrollView {
                
                ForEach (viewModel.categories) { category in
                    NavigationLink (destination: category) {
                        CategoryRow(category: category)
                    }
                }
                
            }
            .padding(.top, 6)
            .navigationBarTitle(lessonChoice.rawValue, displayMode: .inline)
        } else {
            // Fallback on earlier versions
            ScrollView {
                
                ForEach (viewModel.categories) { category in
                    NavigationLink (destination: category) {
                        CategoryRow(category: category)
                    }
                }
                
            }
            .padding(.top, 6)
            .navigationBarTitle(lessonChoice.rawValue)
        }
    }
}

struct LessonView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView(lessonChoice: .Variables)
    }
}
