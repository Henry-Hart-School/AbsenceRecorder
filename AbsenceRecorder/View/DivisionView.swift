//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Hart, Henry (AGDF) on 02/02/2023.
//

import SwiftUI

struct DivisionView: View {
    @EnvironmentObject var state: StateController
    @State private var currentDate = Date()
    
    var body: some View {
        NavigationView {
            List(state.divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(absence: division.createAbsenceOrGetExistingIfAvailable(for: currentDate))) {
                DivisionItem(division: division)
            }
        }
            .onAppear(perform: {state.saveToFile()})
        .navigationTitle(currentDate.getShortDate())
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {currentDate = currentDate.previousDay()}) {
                    Image(systemName: "arrow.backward")
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {currentDate = currentDate.nextDay()}) {
                    Image(systemName: "arrow.forward")
                }
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionView()
            .environmentObject(StateController())
    }
}
