//
//  ControlGroupQuantityStyle.swift
//  ControlGroupStyleDemo
//
//  Created by Viktor Shurapov on 11/29/22.
//

import Foundation
import SwiftUI

struct ControlGroupQuantityStyle: ControlGroupStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center) {
            Label("Quantity", systemImage: "bag")
                .font(.body.weight(.bold))
            HStack {
                configuration.content
            }
        }
    }
}

extension ControlGroupStyle where Self == ControlGroupQuantityStyle {
    static var quantity: ControlGroupQuantityStyle { .init() }
}

