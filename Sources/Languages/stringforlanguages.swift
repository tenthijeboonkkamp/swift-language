//
//  stringforlanguages.swift
//  Trust
//
//  Created by Coen ten Thije Boonkkamp on 11/06/2020.
//  Copyright © 2020 LegalKit. All rights reserved.
//

import Foundation

public func string(if condition:@autoclosure ()->Bool = true, for language:Languages.Language = .current, dutch:String? = nil, english:String? = nil)->String {
    switch language {
    case .english: return condition() ? english ?? "" : ""
    case .dutch: return condition() ? dutch ?? "" : ""
    }
}

//public func string(_ string:String, if condition:@autoclosure ()->Bool)->String? { condition() ? string : nil }

public func string(dutch:String? = nil, english:String? = nil)->(Language)->String {
    return { language in
        switch language {
        case .english: return english ?? ""
        case .dutch: return dutch ?? ""
        }
    }
}

public func value<A>(for language: Languages.Language, dutch: A, english: A)->A {
    switch language {
    case .dutch: return dutch
    case .english: return english
    }
}


public func string<A>(from type: A, keyPath: KeyPath<A, Language>, dutch:String? = nil, english:String? = nil)->String {
    let language = type[keyPath: keyPath]
    switch language {
    case .english: return english ?? ""
    case .dutch: return dutch ?? ""
    }
}

extension Languages.Language {
    public func callAsFunction<A>(dutch:A, english:A)->A {
        Languages.value(for: self, dutch: dutch, english: english)
    }
    
    public func callAsFunction<A>(english:A, dutch:A)->A {
        Languages.value(for: self, dutch: dutch, english: english)
    }
    
    public func callAsFunction<A>(all:A)->A {
        Languages.value(for: self, dutch: all, english: all)
    }
}
