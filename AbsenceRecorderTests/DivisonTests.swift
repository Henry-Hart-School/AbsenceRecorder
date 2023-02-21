//
//  DivisonTests.swift
//  AbsenceRecorderTests
//
//  Created by Hart, Henry (AGDF) on 21/02/2023.
//

import XCTest
@testable import AbsenceRecorder

class DivisonTests: XCTestCase {

    func testGetAbsenceDivisionWithAbsenceOnThatDayReturnsAbsence() throws {
        // stuff
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateAges = Date(timeIntervalSinceNow: 10000000000000000000)
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let absences = [
            Absence(date: dateAges, students: Student.examples),
            Absence(date: dateToday, students: Student.examples)
        ]
        _ = absences.map {division.absences.append($0)}
        
        // do stuff
        let absenceCheck = division.getAbsence(for: dateLaterToday)
        
        // check stuff
        XCTAssertNotNil(absenceCheck)
        XCTAssertEqual(absenceCheck!.takenOn, absences[1].takenOn)
    }

}
