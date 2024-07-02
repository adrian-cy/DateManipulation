//
//  ContentView.swift
//  DateManipulation
//
//  Created by Ioan Adrian Hancu on 2024-07-02.
//

import SwiftUI

struct ContentView: View {
    let today = Date.now
    var twoWeeks = Date.now
    var month = Date.now
    
    init() {
//        self.twoWeeks = self.today.addingTimeInterval(60*60*24*14)
        self.twoWeeks = Calendar.current.date(byAdding: .day, value: 14, to: today) ?? Date.now
        self.month = Calendar.current.date(byAdding: .month, value: 1, to: today) ?? Date.now
    }
    
    var body: some View {
        VStack {
            Text(today.formatted(date: .long, time: .omitted))
            Text(twoWeeks.formatted(date: .long, time: .omitted))
            Text(month.formatted(date: .long, time: .omitted))
        }
        .padding()
    }
}

//#Preview {
//    ContentView()
//}
