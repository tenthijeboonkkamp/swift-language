//
//  File.swift
//  
//
//  Created by Coen ten Thije Boonkkamp on 13/12/2020.
//

import Foundation

public struct Translated<A> {
    
//    public var english:A
//    public var dutch:A
//    public var french:A
//    public var italian:A
//    public var spanish:A
//    public var german:A
//    public var swedish:A
//    public var danish:A
//
    public let chinese:A
    public let danish:A
    public let dutch:A
    public let english:A
    public let french:A
    public let german:A
    public let italian:A
    public let japanese:A
    public let korean:A
    public let portuguese:A
    public let russian:A
    public let spanish:A
    public let swedish:A
    public let turkish:A
    
    public var engels:A { english }
    public var nederlands:A { dutch }
    public var nl:A { dutch }
    
    
    func all()->[A] {
        [
            chinese,
            danish,
            dutch,
            english,
            french,
            german,
            italian,
            japanese,
            korean,
            portuguese,
            russian,
            spanish,
            swedish,
            turkish
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
        
        case .chinese: return chinese
        case .danish: return danish
        case .dutch: return dutch
        case .english: return english
        case .french: return french
        case .german: return german
        case .italian: return italian
        case .japanese: return japanese
        case .korean: return korean
        case .portuguese: return portuguese
        case .russian: return russian
        case .spanish: return spanish
        case .swedish: return swedish
        case .turkish: return turkish
        }
    }
    
    public func callAsFunction(_ language:Languages.Language)->A {
        callAsFunction(language: language)
    }
    
    public init(
        _ all:A
    ){
        self.chinese = all
        self.danish = all
        self.dutch = all
        self.english = all
        self.french = all
        self.german = all
        self.italian = all
        self.japanese = all
        self.korean = all
        self.portuguese = all
        self.russian = all
        self.spanish = all
        self.swedish = all
        self.turkish = all
        

    }
    
    public init(
        _ all:(Languages.Language)->A
    ){
        self.chinese = all(.chinese)
        self.danish = all(.danish)
        self.dutch = all(.dutch)
        self.english = all(.english)
        self.french = all(.french)
        self.german = all(.german)
        self.italian = all(.italian)
        self.japanese = all(.japanese)
        self.korean = all(.korean)
        self.portuguese = all(.portuguese)
        self.russian = all(.russian)
        self.spanish = all(.spanish)
        self.swedish = all(.swedish)
        self.turkish = all(.turkish)
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
        chinese:A? = nil,
        danish:A? = nil,
        french:A? = nil,
        german:A? = nil,
        italian:A? = nil,
        japanese:A? = nil,
        korean:A? = nil,
        portuguese:A? = nil,
        russian:A? = nil,
        spanish:A? = nil,
        swedish:A? = nil,
        turkish:A? = nil
    ) {
        
        self.chinese = chinese ?? english
        self.danish = danish ?? english
        self.dutch = dutch ?? english
        self.english = english
        self.french = french ?? english
        self.german = german ?? english
        self.italian = italian ?? english
        self.japanese = japanese ?? english
        self.korean = korean ?? english
        self.portuguese = portuguese ?? english
        self.russian = russian ?? english
        self.spanish = spanish ?? english
        self.swedish = swedish ?? english
        self.turkish = turkish ?? english
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
        self.chinese = value
        self.danish = value
        self.dutch = value
        self.english = value
        self.french = value
        self.german = value
        self.italian = value
        self.japanese = value
        self.korean = value
        self.portuguese = value
        self.russian = value
        self.spanish = value
        self.swedish = value
        self.turkish = value
    }
    
    public typealias UnicodeScalarLiteralType = String
    
}

extension Translated: ExpressibleByExtendedGraphemeClusterLiteral where A == String {
    public typealias ExtendedGraphemeClusterLiteralType = String
    
}

extension Translated:ExpressibleByStringLiteral where A == String {
    public init(stringLiteral:String) {
        self.chinese = stringLiteral
        self.danish = stringLiteral
        self.dutch = stringLiteral
        self.english = stringLiteral
        self.french = stringLiteral
        self.german = stringLiteral
        self.italian = stringLiteral
        self.japanese = stringLiteral
        self.korean = stringLiteral
        self.portuguese = stringLiteral
        self.russian = stringLiteral
        self.spanish = stringLiteral
        self.swedish = stringLiteral
        self.turkish = stringLiteral
    }
}

public extension Translated where A == String {
    static let empty:Self = .init("")
}

public extension Translated where A == String {
    var capitalized:Self {
        self.map(\.capitalized)
    }
    
    func capitalized(with locale: Locale? = nil)->Self {
        self.map{ $0.capitalized(with: locale) }
    }
    
    func capitalizedFirstLetter()->Self {
        self.map { $0.prefix(1).capitalized + $0.dropFirst() }
        
        
//        .init(english: self.english.prefix(1).capitalized + self.english.dropFirst(), dutch: self.dutch.prefix(1).capitalized + self.dutch.dropFirst())
    }
    
    func firstLetter(_ closure:(String)->String)->Self {
        
        self.map { closure(String($0.prefix(1))) + $0.dropFirst() }
        
    }
    
    func lowercased(with locale: Locale? = nil)->Self {
        self.map { $0.lowercased(with: locale) }
    }
}
