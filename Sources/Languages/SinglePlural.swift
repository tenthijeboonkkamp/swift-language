//
//  File.swift
//  
//
//  Created by Coen ten Thije Boonkkamp on 29/04/2022.
//

import Foundation

@dynamicMemberLookup
public struct SinglePlural<A> {
    public let single:A
    public let plural:A
    
    public var enkelvoud:A { single }
    public var meervoud:A { plural }

    public subscript<T>(dynamicMember keyPath: KeyPath<A, T>) -> T { single[keyPath: keyPath] }
    
    public enum Variant {
        case single
        case plural
    }
    
    public func callAsFunction(with variant:Variant = .single)->A {
        callAsFunction(variant: variant)
    }
    
    public func callAsFunction(in variant:Variant = .single)->A {
        callAsFunction(variant: variant)
    }
    
    public func callAsFunction(for variant:Variant = .single)->A {
        callAsFunction(variant: variant)
    }
    public func callAsFunction(_ variant:Variant = .single)->A {
        callAsFunction(variant:variant)
    }
    
    public func callAsFunction(_ int:Int)->A {
        if int == 1 {
            return self.single
        } else {
            return self.plural
        }
        
//        callAsFunction(variant:variant)
    }
    
    public func callAsFunction(variant:Variant = .single)->A {
        switch variant {
        case .single: return self.single
        case .plural: return self.plural
        }
    }
    
    
    
    public func map<B>(_ transform:(A)->B)->SinglePlural<B> {
        return SinglePlural<B>.init(single: transform(self.single), plural: transform(self.plural))
    }
    
    public func flatMap<B>(_ transform:(A)->SinglePlural<B>)->SinglePlural<B> {
        return SinglePlural<B>.init(single: transform(self.single).single, plural: transform(self.plural).plural)
    }
    
    public init(
        _ all: A
    ){
        self.single = all
        self.plural = all
    }
    
    public init(
        _ all: (Variant)->A
    ){
        self.single = all(.single)
        self.plural = all(.plural)
    }
    
    public init(
        
        single:A,
        plural:A
    ){
        self.single = single
        self.plural = plural
    }
}

public extension SinglePlural where A == Translated<String> {
    static let parties:Self = .init(single: .init(english: "Party", dutch: "Partij"), plural: .init(english: "Parties", dutch: "Partijen"))
    
    init(english:String, dutch:String? = nil){
        self = .init(Translated<String>.init(english: english, dutch: dutch))
    }
}

//extension SinglePlural:CustomStringConvertible where A == Translated<String> {
//
//    public func callAsFunction(_ language:Languages.Language)->String {
//        self.single(language)
//    }
//
//    public init(
//        _ string:Translated<String>
//    ) {
//        self.single = string
//        self.plural = string
//    }
//
//    public init(
//        english:String,
//        dutch:String? = nil,
//        german:String? = nil,
//        italian:String? = nil,
//        spanish:String? = nil,
//        french:String? = nil,
//        swedish:String? = nil
//    ) {
//        self.single = .init(english: english, dutch: dutch, german: german, italian: italian, spanish: spanish, french: french, swedish: swedish)
//        self.plural = .init(english: english, dutch: dutch, german: german, italian: italian, spanish: spanish, french: french, swedish: swedish)
//    }
//
//}

extension SinglePlural: ExpressibleByUnicodeScalarLiteral where A == Translated<String> {
    public init(unicodeScalarLiteral value: Translated<String>) {
        self.single = value
        self.plural = value
    }
    
    public typealias UnicodeScalarLiteralType = String
    
}

extension SinglePlural: ExpressibleByExtendedGraphemeClusterLiteral where A == Translated<String> {
    public typealias ExtendedGraphemeClusterLiteralType = String
    
}

extension SinglePlural:ExpressibleByStringLiteral where A == Translated<String> {
    public init(stringLiteral:String) {
        self.single = .init(stringLiteral)
        self.plural = .init(stringLiteral)
    }
}

public extension SinglePlural where A == Translated<String> {
    static let empty:Self = .init(single: "", plural: "")
}

extension SinglePlural:Equatable where A:Equatable {}
extension SinglePlural:Hashable where A:Hashable {}
