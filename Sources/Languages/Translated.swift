//
//  File.swift
//  
//
//  Created by Coen ten Thije Boonkkamp on 13/12/2020.
//

import Foundation

public struct Translated<A> {
    
    public var english:A
    public var dutch:A
    public var french:A
    public var italian:A
    public var spanish:A
    public var german:A
    public var swedish:A
    public var danish:A
    
    public var engels:A { english }
    public var nederlands:A { dutch }
    public var nl:A { dutch }
    
    
    func all()->[A] {
        [
            english,
            dutch,
            french,
            italian,
            spanish,
            german,
            swedish,
            danish
        ]
    }
    
    
    public func callAsFunction(with language:Languages.Language)->A {
        callAsFunction(language: language)
    }
    
    public func callAsFunction(in language:Languages.Language)->A {
        callAsFunction(language: language)
    }
    
    public func callAsFunction(for language:Languages.Language)->A {
        callAsFunction(language: language)
    }
    
    public func test()->A{
        fatalError()
    }
    
    public func callAsFunction(language:Languages.Language)->A {
        switch language {
        case .dutch: return dutch
        case .english: return english
        case .french: return french
        case .german: return german
        case .italian: return italian
        case .spanish: return spanish
        case .swedish: return swedish
        case .danish: return danish
        }
    }
    
    public func callAsFunction(_ language:Languages.Language)->A {
        callAsFunction(language: language)
    }
    
    public init(
        _ all:A
    ){
        self.dutch = all
        self.english = all
        self.german = all
        self.italian = all
        self.spanish = all
        self.french = all
        self.swedish = all
        self.danish = all
    }
    
    public init(
        _ all:(Languages.Language)->A
    ){
        self.dutch = all(.dutch)
        self.english = all(.english)
        self.german = all(.german)
        self.italian = all(.italian)
        self.spanish = all(.spanish)
        self.french = all(.french)
        self.swedish = all(.swedish)
        self.danish = all(.danish)
    }
    
    
    public func map<B>(_ transform:(A)->B)->Translated<B> {
        return Translated<B>.init(english: transform(english), dutch: transform(self.dutch))
    }
    
    public func flatMap<B>(_ transform:(A)->Translated<B>)->Translated<B> {
        return .init(english: transform(english).english, dutch: transform(dutch).dutch)
    }
}

public extension Translated {
    init(
        english:A,
        dutch:A? = nil,
        german:A? = nil,
        italian:A? = nil,
        spanish:A? = nil,
        french:A? = nil,
        swedish:A? = nil,
        danish:A? = nil
    ) {
        self.dutch = dutch ?? english
        self.english = english
        self.german = german ?? english
        self.italian = italian ?? english
        self.spanish = spanish ?? english
        self.french = french ?? english
        self.swedish = swedish ?? english
        self.danish = danish ?? english
    }
}

public extension Translated where A == String {
    func contains(_ string:String) -> Bool {
        self.all().map{ $0.lowercased() }.map { $0.contains(string.lowercased()) }.contains(true)
//            || self.any
    }
}


//extension Translated:StringProtocol where A:StringProtocol {}

extension Translated:Codable where A:Codable {
    
}

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
        self.callAsFunction(language: .english)
    }
}

extension Translated: ExpressibleByUnicodeScalarLiteral where A == String {
    public init(unicodeScalarLiteral value: String) {
        self.dutch = value
        self.english = value
        self.dutch = value
        self.english = value
        self.german = value
        self.italian = value
        self.spanish = value
        self.french = value
        self.swedish = value
        self.danish = value
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
        self.dutch = stringLiteral
        self.english = stringLiteral
        self.german = stringLiteral
        self.italian = stringLiteral
        self.spanish = stringLiteral
        self.french = stringLiteral
        self.swedish = stringLiteral
        self.danish = stringLiteral
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
    
    func capitalizedFirstLetter()->Self {
        .init(english: self.english.prefix(1).capitalized + self.english.dropFirst(), dutch: self.dutch.prefix(1).capitalized + self.dutch.dropFirst())
    }
    
    func firstLetter(_ closure:(String)->String)->Self {
        .init(english: closure(String(self.english.prefix(1))) + self.english.dropFirst(), dutch: closure(String(self.dutch.prefix(1))) + self.dutch.dropFirst())
    }
    
    func lowercased()->Self {
        .init(english: self.english.lowercased(), dutch: self.dutch.lowercased())
    }
}
