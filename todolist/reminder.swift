//
//  reminder.swift
//  todolist
//
//  Created by Molly Sweeney on 5/2/25.
//

import Foundation

struct Reminder: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted = false
}

extension Reminder {
    static let samples = [
        Reminder(title: "Complete KWK hw", isCompleted: true),
        Reminder(title: "Go to the store"),
        Reminder(title: "Pack for vacation"),
    ]
}
