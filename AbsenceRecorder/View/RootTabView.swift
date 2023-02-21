//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Hart, Henry (AGDF) on 21/02/2023.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.pie")
                    Text("Statistics")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
