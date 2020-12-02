//
//  Binding-OnChange.swift
//  MovieApp
//
//  Created by William Yeung on 11/27/20.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping () -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in self.wrappedValue = newValue; handler() }
        )
    }
}
