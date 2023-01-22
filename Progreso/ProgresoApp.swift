//
//  ProgresoApp.swift
//  Progreso
//
//  Created by Sengsathit SILALAK on 22/01/2023.
//

import SwiftUI

@main
struct ProgresoApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(User())
        }
    }
}
