//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by Mehmet Tekin on 7.05.2024.
//

import SwiftUI

struct AddressView: View {
    @Bindable var order: Order

    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                    .onChange(of: order.name) { newValue in
                        order.name = newValue.trimmingCharacters(in: .whitespacesAndNewlines)
                    }
                TextField("Street Address", text: $order.streetAddress)
                    .onChange(of: order.streetAddress) { newValue in
                        order.streetAddress = newValue.trimmingCharacters(in: .whitespacesAndNewlines)
                    }
                TextField("City", text: $order.city)
                    .onChange(of: order.city) { newValue in
                        order.city = newValue.trimmingCharacters(in: .whitespacesAndNewlines)
                    }
                TextField("Zip", text: $order.zip)
                    .onChange(of: order.zip) { newValue in
                        order.zip = newValue.trimmingCharacters(in: .whitespacesAndNewlines)
                    }
            }

            Section {
                NavigationLink(destination: CheckoutView(order: order)) {
                    CheckoutView(order: order)
                }
            }
            .disabled(order.hasValidAddress == false)
        }
        .navigationTitle("Delivery details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddressView(order: Order())
}

