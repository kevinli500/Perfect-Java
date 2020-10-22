//
//  ContentView.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/19/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        TabView{
            HomeView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            HomeView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("More")
                }
        }
        .sheet(isPresented: $viewModel.firstUse, content: {
            WelcomeView()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
