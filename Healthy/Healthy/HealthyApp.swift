//
//  HealthyApp.swift
//  Healthy
//
//  Created by Beket Muratbek on 13.03.2022.
//

import SwiftUI

@main
struct HealthyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
