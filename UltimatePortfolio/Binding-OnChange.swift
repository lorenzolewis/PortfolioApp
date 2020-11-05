//
//  Binding-OnChange.swift
//  UltimatePortfolio
//
//  Created by Lorenzo Lewis on 10/30/20.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping () -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler()
            }
        )
    }
}
