import Foundation

//extension Language {
//    public static var current:Language = .english
//}

public enum Language: String, CaseIterable, Hashable, Equatable, Codable {
    case arabic = "ar"
    case bengali = "bn"
    case chinese = "zh"
    case danish = "da"
    case dutch = "nl"
    case english = "en"
    case french = "fr"
    case german = "de"
    case hindi = "hi"
    case irish = "ga"
    case italian = "it"
    case japanese = "ja"
    case javanese = "jv"
    case korean = "ko"
    case polish = "pl"
    case portuguese = "pt"
    case romanian = "ro"
    case russian = "ru"
    case slovak = "sk"
    case slovenian = "sl"
    case spanish = "es"
    case swedish = "sv"
    case turkish = "tr"
//    case abkhazian = "ab"
//    case afar = "aa"
//    case afrikaans = "af"
//    case akan = "ak"
//    case albanian = "sq"
//    case amharic = "am"
//    case aragonese = "an"
//    case armenian = "hy"
//    case assamese = "as"
//    case auEnglish = "en-au"
//    case avaric = "av"
//    case avestan = "ae"
//    case aymara = "ay"
//    case azerbaijani = "az"
//    case bambara = "bm"
//    case bashkir = "ba"
//    case basque = "eu"
//    case belarusian = "be"
//    case bihari = "bh"
//    case bislama = "bi"
//    case bosnian = "bs"
//    case breton = "br"
//    case bulgarian = "bg"
//    case burmese = "my"
//    case catalan = "ca"
//    case caEnglish = "en-ca"
//    case chamorro = "ch"
//    case chechen = "ce"
//////case chichewa, chewa, nyanja = "ny"
//
//    case chuvash = "cv"
//    case cornish = "kw"
//    case corsican = "co"
//    case cree = "cr"
//    case croatian = "hr"
//    case czech = "cs"
//
//////case divehi, dhivehi, maldivian = "dv"
//
//    case dzongkha = "dz"
//
//    case esperanto = "eo"
//    case estonian = "et"
//    case ewe = "ee"
//    case faroese = "fo"
//    case fijian = "fj"
//    case finnish = "fi"
//
////////case fula, fulah, pulaar, pular = "ff"
//    case galician = "gl"
//    case gaelicScottish = "gd"
//    case georgian = "ka"
//
//    case greek = "el"
//    case guarani = "gn"
//    case gujarati = "gu"
//    case haitianCreole = "ht"
//    case hausa = "ha"
//    case hebrew = "he"
//    case herero = "hz"
//
//    case hiriMotu = "ho"
//    case hungarian = "hu"
//    case icelandic = "is"
//    case ido = "io"
//    case igbo = "ig"
//    case indonesian = "id"
//    case interlingua = "ia"
//    case interlingue = "ie"
//    case inuktitut = "iu"
//    case inupiak = "ik"
//
////case kalaallisut, greenlandic = "kl"
//    case kannada = "kn"
//    case kanuri = "kr"
//    case kashmiri = "ks"
//    case kazakh = "kk"
//    case khmer = "km"
//    case kikuyu = "ki"
//    case kinyarwanda = "rw"
//    case kirundi = "rn"
//    case kyrgyz = "ky"
//    case komi = "kv"
//    case kongo = "kg"
//
//    case kurdish = "ku"
//    case kwanyama = "kj"
//    case lao = "lo"
//    case latin = "la"
//    case latvian = "lv"
//    case limburgish = "li"
//    case lingala = "ln"
//    case lithuanian = "lt"
//    case lugaKatanga = "lu"
////case luganda, ganda = "lg"
//    case luxembourgish = "lb"
//    case manx = "gv"
//    case macedonian = "mk"
//    case malagasy = "mg"
//    case malay = "ms"
//    case malayalam = "ml"
//    case maltese = "mt"
//    case maori = "mi"
//    case marathi = "mr"
//    case marshallese = "mh"
//    case moldavian = "mo"
//    case mongolian = "mn"
//    case nauru = "na"
//    case navajo = "nv"
//    case ndonga = "ng"
//    case northernNdebele = "nd"
//    case nepali = "ne"
//    case norwegian = "no"
//    case norwegianBokmål = "nb"
//    case norwegianNynorsk = "nn"
////case nuosu, sichuanYi = "ii"
//    case occitan = "oc"
//    case ojibwe = "oj"
////case oldChurchSlavonic, oldBulgarian = "cu"
//    case oriya = "or"
//    case oromo = "om"
//    case ossetian = "os"
//    case pāli = "pi"
////case pashto, pushto = "ps"
//    case persian = "fa"
//
//    case punjabi = "pa"
//    case quechua = "qu"
//    case romansh = "rm"
//
//    case sami = "se"
//    case samoan = "sm"
//    case sango = "sg"
//    case sanskrit = "sa"
//    case serbian = "sr"
//    case serboCroatian = "sh"
//    case sesotho = "st"
//    case setswana = "tn"
//    case shona = "sn"
//    case sindhi = "sd"
//    case sinhalese = "si"
//
//    case somali = "so"
//    case southernNdebele = "nr"
//
//    case sundanese = "su"
//    case swahili = "sw"
//    case swati = "ss"
//
//    case tagalog = "tl"
//    case tahitian = "ty"
//    case tajik = "tg"
//    case tamil = "ta"
//    case tatar = "tt"
//    case telugu = "te"
//    case thai = "th"
//    case tibetan = "bo"
//    case tigrinya = "ti"
//    case tonga = "to"
//    case tsonga = "ts"
//
//    case turkmen = "tk"
//    case twi = "tw"
//    case uyghur = "ug"
//    case ukEnglish = "en-gb"
//    case ukrainian = "uk"
//    case urdu = "ur"
//    case usEnglish = "en-us"
//    case uzbek = "uz"
//    case venda = "ve"
//    case vietnamese = "vi"
//    case volapük = "vo"
//    case wallon = "wa"
//    case welsh = "cy"
//    case wolof = "wo"
//    case westernFrisian = "fy"
//    case xhosa = "xh"
////case yiddish = "yi, ji"
//    case yoruba = "yo"
////case zhuang, chuang = "za"
//    case zulu = "zu"
    
//    case xDefault = "x-default"
}


public extension Language {
    
    static let title:SinglePlural<Translated<String>> = .init(single: .init(english: "Language", dutch: "Taal"), plural: .init(english: "Languages", dutch: "Talen"))
    
    enum LabelLength:String, Hashable, Equatable, Codable {
        case short, normal
    }
    
    var label:Translated<String> { label(.normal) }
    
    
    func label(_ length:LabelLength = .normal)->Translated<String> {
        
        switch (self, length) {
//        case (.dutch, .normal): return .init(english: "Dutch", dutch: "Nederlands")
//        case (.dutch, .short): return .init(english: "nl", dutch: "nl")
//        case (.english, .normal): return .init(english: "English", dutch: "Engels")
//        case (.english, .short): return .init(english: "en", dutch: "en")
//        case (.french, .normal): return .init(english: "French", dutch: "Frans", french: "Francais")
//        case (.french, .short): return .init(english: "fr", dutch: "fr")
//        case (.german, .normal): return .init(english: "German", german: "Deutsch")
//        case (.german, .short): return .init(english: "ge", dutch: "de")
//        case (.italian, .normal): return .init(english: "Italian", italian: "Italiana")
//        case (.italian, .short): return .init("it")
//        case (.spanish, .normal): return .init(english: "Spanish", spanish: "Español")
////        case (.spanish, .short): return .init(english: "spa")
////        case (.swedish, .normal): return .init(english: "Swedish", swedish: "svenska")
////        case (.swedish, .short): return .init(english: "swe")
////        case (.danish, .short): return .init(english: "da")
////        case (.danish, .normal): return .init(english: "Danish")
//        case (.chinese, .short): return .init(english: "ch")
//        case (.chinese, .normal): return .init(english: "Chinese")
//        case (.japanese, _):
//            fatalError()
//        case (.korean, _):
//            fatalError()
//        case (.portuguese, _):
//            fatalError()
//        case (.russian, _):
//            fatalError()
////        case (.turkish, _):
////            fatalError()
//        case (.arabic, _):
//            fatalError()
        default: fatalError()
        }
    }
}

public let all:[Language] = Language.allCases


public extension Locale {
    static var autoupdatingLanguage:Languages.Language {
        switch Self.autoupdatingCurrent.identifier {
        case "nl_NL": return .dutch
        default: fatalError()
        }
    }
}

public extension String {
    static func translated(
        english:String,
        dutch:String? = nil,
        language:Languages.Language
    ) -> String {
        Translated<String>.init(english: english, dutch: dutch)(language)
    }
    
    init(
        english:String,
        dutch:String? = nil,
        language:Languages.Language
    ){
        self = Translated<String>.init(english: english, dutch: dutch)(language)
    }
}




