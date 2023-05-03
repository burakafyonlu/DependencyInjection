//
//  backgroundProvidingClass.swift
//  DependencyInjection
//
//  Created by Burak Afyonlu on 3.05.2023.
//

import Foundation
import UIKit


class backgroundProvidingClass : backgroundProviderProtocol {
    var backgroundColor: UIColor {
        
        
        let backgroundColor : [UIColor] = [.systemRed,.systemBlue,.systemCyan,.systemPink,.systemBrown]
        
        return backgroundColor.randomElement()!
    }
    
}
