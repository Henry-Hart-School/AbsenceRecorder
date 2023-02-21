//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Hart, Henry (AGDF) on 21/02/2023.
//

import SwiftUI

struct AbsenceItem: View {
    @ObservedObject var studentAbsence: StudentAbsence
    
    var body: some View {
        HStack {
            Text("\(studentAbsence.student.forename)")
            Spacer()
            if !studentAbsence.isAbsent {
                Button("✔️", action: toggleAbsent)
            } else {
                Button("❌", action: toggleAbsent)
            }
        }
    }
    
    func toggleAbsent() {
        studentAbsence.isAbsent.toggle()
    }
    
}

struct AbsenceItem_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(studentAbsence: StudentAbsence.example)
    }
}
