//
//  File.swift
//  
//
//  Created by Coen ten Thije Boonkkamp on 19/06/2020.
//

import Foundation

public protocol HasLanguage {
    var language:Languages.Language { get }
}

extension Language:HasLanguage {
    public var language: Language { self }
}

extension Languages.Language {
    public var locale:Locale {
        switch self {
        case .english: return .init(identifier: "US_us")
        case .dutch: return .init(identifier: "NL_nl")
        case .french: fatalError()
        case .german: fatalError()
        case .italian: fatalError()
        case .spanish: fatalError()
        }
    }
}
