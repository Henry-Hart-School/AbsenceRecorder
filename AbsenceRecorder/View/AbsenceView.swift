//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Hart, Henry (AGDF) on 21/02/2023.
//

import SwiftUI

struct AbsenceView: View {
    
    let absence: Absence
    
    var body: some View {
        List(absence.studentAbsences, id: \.self.student.forename) {
            studentAbsence in AbsenceItem(studentAbsence: studentAbsence)
        }
        //Text("Absence View - \(division.code)")
    }
}

struct Absence_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(absence: Absence.example)
    }
}
