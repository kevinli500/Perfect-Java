//
//  HomeViewModel.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/22/20.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var firstUse: Bool
    
    init() {
        firstUse = !UserDefaults.standard.bool(forKey: "firstUse")
    }
    
}
