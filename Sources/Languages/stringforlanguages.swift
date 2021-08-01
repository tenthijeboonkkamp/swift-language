//
//  stringforlanguages.swift
//  Trust
//
//  Created by Coen ten Thije Boonkkamp on 11/06/2020.
//  Copyright © 2020 LegalKit. All rights reserved.
//

import Foundation

extension Languages.Language {
    
    public func callAsFunction<A>(
        english:A,
        dutch:A? = nil,
        french:A? = nil,
        german:A? = nil,
        italian:A? = nil,
        spanish:A? = nil,
        swedish:A? = nil
    )->A {
        switch self {
        case .dutch: return dutch ?? english
        case .english: return english
        case .french: return french ?? english
        case .german: return german ?? english
        case .italian: return italian ?? english
        case .spanish: return spanish ?? english
        case .swedish: return swedish ?? english
        }
    }
    
    public func callAsFunction<A>(_ all:A)->A {
        all
    }
}
