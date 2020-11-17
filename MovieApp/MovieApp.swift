//
//  MovieAppApp.swift
//  MovieApp
//
//  Created by William Yeung on 11/16/20.
//

import SwiftUI

@main
struct MovieApp: App {
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
