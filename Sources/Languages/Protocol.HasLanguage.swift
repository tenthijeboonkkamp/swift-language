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
        case .swedish: fatalError()
        case .danish: fatalError()
        }
    }
}

public extension Languages.Language {
    static func preferredLanguageForUser()->Self {
        
//        print(Bundle.main.preferredLocalizations)
//        print(Locale.preferredLanguages)
        
        if let language = Locale.preferredLanguages.first {
            switch language {
            case "en", "en-US", "en-UK": return .english
            case "nl-NL", "nl": return .dutch
            default: return .english
            }
        } else {
            return .english
        }
        
        
    }
}
