//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Hart, Henry (AGDF) on 02/02/2023.
//

import Foundation

class Student: Codable {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    
    #if DEBUG
    static let examples = [Student(forename: "1", surname: "2", birthday: Date())]
    #endif
}
