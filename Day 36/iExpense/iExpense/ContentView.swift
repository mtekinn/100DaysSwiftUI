//
//  ContentView.swift
//  iExpense
//
//  Created by Mehmet Tekin on 30.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var expenses = Expenses()
    @Environment(\.dismiss) var dismiss // for dismissing the view

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
            .navigationTitle("iExpense")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink("Add Expense", destination: AddView(expenses: expenses).navigationBarBackButtonHidden(true)) // Explicitly use NavigationLink
                }
            }
        }
    }

    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
