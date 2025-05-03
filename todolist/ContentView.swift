//
//  ContentView.swift
//  todolist
//
//  Created by Molly Sweeney on 5/2/25.
//

import SwiftUI


struct ContentView: View {
    @State
    private var reminders = Reminder.samples
    
    @State
    private var isAddRemindereDialogPresented = false
    
    private func presentAddReminderView() {
        isAddReminderDialogPresented.toggle()
    }
    
    var body: some View {
        List($reminders) { $reminder in
            HStack {
                Image(systemName: reminder.isCompleted
                   ? "largecircle.fill.circle"
                      : "circle")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .onTapGesture {
                    reminder.isCompleted.toggle()
                }
                Text(reminder.title)
            }
            }
        }
        //.padding()
    }


#Preview {
    ContentView()
}
