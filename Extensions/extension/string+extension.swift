//
//  string+extension.swift
//  egybike
//
//  Created by Mohamed on 3/19/19.
//  Copyright © 2019 osman. All rights reserved.
//

import Foundation
extension String {
    var trimmed : String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
