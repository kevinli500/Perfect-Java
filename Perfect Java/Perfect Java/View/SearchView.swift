//
//  SearchView.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/19/20.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var viewModel = SearchViewModel()
        
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                SearchBar(searchText: .constant(""))
                    .padding(.horizontal)
                    .padding(.bottom, 2)
                
                ForEach(viewModel.categories) { category in
                    NavigationLink(destination: LessonView(lessonChoice: category.lessonChoice)) {
                        CategoryRow(category: category)
                    }
                }
            }
            .frame(alignment: .leading)
            .navigationBarTitle("Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

struct SearchBar: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        
        HStack {
            
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            
            TextField("Search", text: $searchText)
        
        }
        .padding(.horizontal, 6)
        .padding(.vertical, 6)
        .foregroundColor(.secondary)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(8.0)
        .frame(maxWidth: .infinity)
        
        
    }
}

struct CategoryRow: View {
    
    var category: Category
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Image(systemName: category.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
                    .padding(.leading)
                Text(category.name)
                    .padding(.leading)
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "chevron.right")
                    .padding(.trailing)
                    .foregroundColor(.black)
                
            }.padding(.top, 5)
        
            Divider()
        }
        
    }
    
}
