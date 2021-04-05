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
            VStack {
                
                Text("Welcome to Perfect Java!")
                    .font(.title)
                    .padding(.bottom, 50)
                
                
                NavigationLink(destination: DiagnosticView()) {
                    Card(titleText: "Take Diagnostics Test", subtitleText: "Find out how you learn best")
                }
                
                Spacer()
            }
        }.navigationBarTitle("Perfect Java")
            
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
