//
//  CGFloat+String.swift
//  PagingLayoutSamples
//
//  Created by Amir on 28/06/2020.
//  Copyright © 2020 Amir Khorsandi. All rights reserved.
//

import UIKit


extension String {
    var floatValue: Float {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.allowsFloats = true
        formatter.maximumFractionDigits = 2
        formatter.locale = Locale(identifier: "en_US")
        let text = self.replacingOccurrences(of: ",", with: ".")
        let number = formatter.number(from: text)
        return number?.floatValue ?? 0
    }
}

extension CGFloat {
    func format() -> String {
        String(format: "%.2f", self).replacingOccurrences(of: "-0.00", with: "0.00")
    }
}
