//
//  ContentView.swift
//  BetterRest
//
//  Created by Mehmet Tekin on 19.03.2024.
//

import CoreML
import SwiftUI

struct ContentView: View {
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? .now
    }
    
    var calculateBedTime: String {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            let prediction = try model.prediction(wake: Int64(Double(hour + minute)), estimatedSleep: sleepAmount, coffee: Int64(Double(coffeeAmount)))
            let sleepTime = wakeUp - prediction.actualSleep
            return sleepTime.formatted(date: .omitted, time: .shortened)
        } catch {
            return "Error: could not calculate bedtime."
        }
    }

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                } header: {
                    Text("When do you want to wake up?")
                }
                
                Section {
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                } header: {
                    Text("Desired amount of sleep")
                }

                Section {
                    Picker("Number of cups", selection: $coffeeAmount) {
                        ForEach(1..<21, id: \.self) { number in
                            Text("\(number) cup\(number > 1 ? "s" : "")")
                        }
                    }
                } header: {
                    Text("Daily cofee intake")
                }
                
                Section {
                    Text(calculateBedTime)
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .center)
                } header: {
                    Text("Recommended Bedtime")
                }
                .navigationTitle("BetterRest")
                
            }
        }
    }
    
}

#Preview {
    ContentView()
}
