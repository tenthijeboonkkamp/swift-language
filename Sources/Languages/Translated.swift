//
//  File.swift
//  
//
//  Created by Coen ten Thije Boonkkamp on 13/12/2020.
//

import Foundation

public struct Translated<A> {
    
    public let english:A
    public let dutch:A
    
    public func callAsFunction(with language:Languages.Language = .current)->A {
        callAsFunction(language: language)
    }
    
    public func callAsFunction(in language:Languages.Language = .current)->A {
        callAsFunction(language: language)
    }
    
    public func callAsFunction(for language:Languages.Language = .current)->A {
        callAsFunction(language: language)
    }
    
    public func test()->A{
        fatalError()
    }
    
    public func callAsFunction(language:Languages.Language = .current)->A {
        switch language {
        case .dutch: return dutch
        case .english: return english
        }
    }
    
    public func callAsFunction(_ language:Languages.Language = .current)->A {
        switch language {
        case .dutch: return dutch
        case .english: return english
        }
    }
    
    public init(
        _ all:A
    ){
        self.dutch = all
        self.english = all
    }
    
    public init(
        _ all:(Languages.Language)->A
    ){
        self.english = all(.english)
        self.dutch = all(.dutch)
    }
    
    public init(
        
        english:A,
        dutch:A
    ){
        self.dutch = dutch
        self.english = english
    }
    
    public func map<B>(_ transform:(A)->B)->Translated<B> {
        return Translated<B>.init(english: transform(english), dutch: transform(self.dutch))
    }
    
    public func flatMap<B>(_ transform:(A)->Translated<B>)->Translated<B> {
        return .init(english: transform(english).english, dutch: transform(dutch).dutch)
    }
}


//extension Translated:StringProtocol where A:StringProtocol {}

extension Translated:Equatable where A:Equatable {}

extension Translated:Hashable where A:Hashable {}

extension Translated:Comparable where A:Comparable {
    public static func < (lhs: Translated<A>, rhs: Translated<A>) -> Bool {
        lhs.dutch < rhs.dutch
    }
}

extension Translated where A == String {
    static func +(lhs: Self, rhs: String) -> Self {
        return Translated<String>.init(english: lhs(.english) + rhs, dutch: lhs(.dutch) + rhs)
    }
    
    static func +(lhs: String, rhs: Self) -> Self {
        return Translated<String>.init(english: lhs + rhs(.english), dutch: lhs + rhs(.dutch))
    }
}


public extension String {
    var any:Self {
        if let first = self.first {
            if Set<String>.consonents.contains(String(first)) {return "an \(self)"}
            else { return "a \(self)" }
        }
        return self
    }
}

public extension Translated where A == String {
    var any:Self {
        .init(
            
            english: {
                if let first = english.first {
                    if Set<String>.consonents.contains(String(first)) {return "an \(english)"}
                    else { return "a \(english)" }
                }
                return english
            }(),
            dutch: "een \(dutch)"
        )
    }
    
    var the:Self {
        .init(
            
            english: "the \(english)",
            dutch: "de \(dutch)"
        )
    }
}

extension Set where Element == String {
    static let consonents:Self = [
        "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"
    ]
}


public func +(_ lhs:Translated<String>, _ rhs:Translated<String>)->Translated<String> {
    return Translated<String>.init(english: lhs(in: .english) + rhs(in: .english), dutch: lhs(in: .dutch) + rhs(in: .dutch))
}

extension Translated:CustomStringConvertible where A == String {
    public var description: String {
        self.callAsFunction(language: .current)
    }
}

extension Translated: ExpressibleByUnicodeScalarLiteral where A == String {
    public init(unicodeScalarLiteral value: String) {
        self.dutch = value
        self.english = value
    }
    
    public typealias UnicodeScalarLiteralType = String
    
}

extension Translated: ExpressibleByExtendedGraphemeClusterLiteral where A == String {
    public typealias ExtendedGraphemeClusterLiteralType = String
    
}

extension Translated:ExpressibleByStringLiteral where A == String {
    public init(stringLiteral:String) {
        self.dutch = stringLiteral
        self.english = stringLiteral
    }
}

public extension Translated where A == String {
    static let empty:Self = .init(english: "", dutch: "")
}

public extension Translated where A == String {
    var capitalized:Self {
        .init(english: self.english.capitalized, dutch: self.dutch.capitalized)
    }
    
    func capitalized(with locale: Locale? = nil)->Self {
        .init(english: self.english.capitalized(with: locale), dutch: self.dutch.capitalized(with: locale))
    }
    
    
}
