//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by Hart, Henry (AGDF) on 02/02/2023.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(StateController())
        }
    }
}
