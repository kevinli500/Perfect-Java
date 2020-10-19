//
//  SearchView.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/19/20.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView{
            VStack {
                SearchBar(searchText: .constant(""))
                    .padding(.horizontal)
                Spacer()
                //Text("Search View")
                List {
                    
                }
            }
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
        .padding(.vertical, 8)
        .foregroundColor(.secondary)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10.0)
        
        
        
    }
}
