//
//  HomeView.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/19/20.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            Text("Welcome to Perfect Java!")
        }.navigationBarTitle("Perfect Java")
            
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
