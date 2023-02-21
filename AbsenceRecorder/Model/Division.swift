//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Hart, Henry (AGDF) on 02/02/2023.
//

import Foundation

class Division: Codable {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    func getAbsence(for date: Date) -> Absence? {
        return absences.first {
            let comparison = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
    func createAbsenceOrGetExistingIfAvailable(for date: Date) -> Absence {
        // evil
        return getAbsence(for: date) ?? { () -> Absence in
            let absence = Absence(date: date, students: students)
            absences.append(absence)
            return absence
        }()
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size {
            let student = Student(forename: "1\(i)", surname: "2\(i)", birthday: Date())
            division.students.append(student)
        }
        
        return division
    }
    
    static let examples = [
        Division.createDivision(code: "vBY-1", of: 8),
        Division.createDivision(code: "vBY-2", of: 8),
        Division.createDivision(code: "vBY-3", of: 8),
        Division.createDivision(code: "vBY-4", of: 8)
    ]
    #endif
}
