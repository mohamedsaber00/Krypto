//
//  String.swift
//  Krypto
//
//  Created by Mohamed Saber on 11/04/2024.
//

import Foundation
import SwiftUI

extension String {
    
    private var percentageFormatter : NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        return formatter
    }
    
    
    func toPercentString() -> String {
        let double = Double(self.prefix(5)) ?? 0
        return "\(double >= 0 ? "+":"-" )" + "\((percentageFormatter.string(for: double) ?? "0.00").replacingOccurrences(of: "-", with: ""))%"
    }
    
    func toPercentColor() -> Color {
        return Double(self) ?? 0 >= 0 ? Color.green: Color.red
    }

}
