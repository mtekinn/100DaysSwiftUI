//
//  ContentView.swift
//  unitConversion
//
//  Created by Mehmet Tekin on 14.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var timeUnits = ["seconds", "minutes", "hours", "days"]
    @State private var inputAmount: Double = 0
    @State private var selectedInputUnit: String = "seconds"
    @State private var selectedOutputUnit: String = "minutes"
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Enter time", value: $inputAmount, format: .number)
                        .keyboardType(.decimalPad)
                    Picker("Input Unit", selection: $selectedInputUnit) {
                        ForEach(timeUnits, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                } header: {
                    Text("Input Unit")
                }
                
                Section {
                    Picker("Output Units", selection: $selectedOutputUnit) {
                        ForEach(timeUnits, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                } header: {
                    Text("Output Unit")
                }
                
                Section {
                    Text("\(convertTime(amount: inputAmount, from: selectedInputUnit, to: selectedOutputUnit), specifier: "%.2f") \(selectedOutputUnit)")
                } header: {
                    Text("Converted Amount")
                }
            }
            .navigationTitle("Time Conversion")
        }
    }
    
    func convertTime(amount: Double, from inputUnit: String, to outputUnit: String) -> Double {
        let conversionRates = ["seconds": 1.0, "minutes": 60.0, "hours": 3600.0, "days": 86400.0]
        let amountInSeconds = amount * (conversionRates[inputUnit] ?? 1.0)
        let convertedAmount = amountInSeconds / (conversionRates[outputUnit] ?? 1.0)
        return convertedAmount

    }
}

#Preview {
    ContentView()
}
