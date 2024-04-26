//
//  ContentView.swift
//  iExpense
//
//  Created by Mehmet Tekin on 30.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var expenses = Expenses()
    @State private var editableTitle = "iExpense" // Initial title
    @State private var isEditingTitle = false // State to toggle title editing

    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        }

                        Spacer()
                        Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                            .font(.headline)
                            .foregroundColor(item.amount < 10 ? .green : (item.amount < 100 ? .orange : .red)) // Color change as an example of styling
                            .fontWeight(item.amount < 10 ? .regular : (item.amount < 100 ? .medium : .bold)) // Weight change as an example of styling
                    }
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle(isEditingTitle ? "" : editableTitle)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        isEditingTitle.toggle()
                    }) {
                        Text(isEditingTitle ? "Done" : "Edit Title")
                    }
                }
            }
            .overlay(
                // Overlay a TextField on top of the navigation bar when editing
                Group {
                    if isEditingTitle {
                        TextField("Enter new title", text: $editableTitle)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                            .transition(.opacity)
                            .animation(.default, value: isEditingTitle)
                    }
                }, alignment: .top
            )
        }
    }

    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
