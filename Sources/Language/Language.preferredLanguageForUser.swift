//
//  File.swift
//
//
//  Created by Coen ten Thije Boonkkamp on 19/06/2020.
//

import Foundation

extension Language {
    public var locale: Locale {
        switch self {
        case .english: return .init(identifier: "US_us")
        case .dutch: return .init(identifier: "NL_nl")
        case .spanish: return .init(identifier: "ES_es")
        case .german: return .init(identifier: "DE_de")
        case .french: return .init(identifier: "FR_fr")
        case .arabic: return .init(identifier: "ar")
        case .bengali: return .init(identifier: "bn")
        case .chinese: return .init(identifier: "zh")
        case .danish: return .init(identifier: "da_DK")
        case .hindi: return .init(identifier: "hi_IN")
        case .indonesian: return .init(identifier: "id_ID")
        case .irish: return .init(identifier: "ga_IE")
        case .italian: return .init(identifier: "it_IT")
        case .japanese: return .init(identifier: "ja_JP")
        case .javanese: return .init(identifier: "jv")
        case .korean: return .init(identifier: "ko_KR")
        case .polish: return .init(identifier: "pl_PL")
        case .portuguese: return .init(identifier: "pt_PT")
        case .romanian: return .init(identifier: "ro_RO")
        case .russian: return .init(identifier: "ru_RU")
        case .slovak: return .init(identifier: "sk_SK")
        case .slovenian: return .init(identifier: "sl_SI")
        case .swedish: return .init(identifier: "sv_SE")
        case .turkish: return .init(identifier: "tr_TR")
        case .abkhazian: return .init(identifier: "ab")
        case .afar: return .init(identifier: "aa")
        case .afrikaans: return .init(identifier: "af_ZA")
        case .akan: return .init(identifier: "ak")
        case .albanian: return .init(identifier: "sq_AL")
        case .amharic: return .init(identifier: "am_ET")
        case .aragonese: return .init(identifier: "an")
        case .armenian: return .init(identifier: "hy_AM")
        case .assamese: return .init(identifier: "as")
        case .auEnglish: return .init(identifier: "en_AU")
        case .avaric: return .init(identifier: "av")
        case .avestan: return .init(identifier: "ae")
        case .aymara: return .init(identifier: "ay")
        case .azerbaijani: return .init(identifier: "az_AZ")
        case .bambara: return .init(identifier: "bm")
        case .bashkir: return .init(identifier: "ba")
        case .basque: return .init(identifier: "eu_ES")
        case .belarusian: return .init(identifier: "be_BY")
        case .bihari: return .init(identifier: "bh")
        case .bislama: return .init(identifier: "bi")
        case .bosnian: return .init(identifier: "bs_BA")
        case .breton: return .init(identifier: "br_FR")
        case .bulgarian: return .init(identifier: "bg_BG")
        case .burmese: return .init(identifier: "my_MM")
        case .catalan: return .init(identifier: "ca_ES")
        case .caEnglish: return .init(identifier: "en_CA")
        case .chamorro: return .init(identifier: "ch")
        case .chechen: return .init(identifier: "ce")
        case .chuvash: return .init(identifier: "cv")
        case .cornish: return .init(identifier: "kw")
        case .corsican: return .init(identifier: "co")
        case .cree: return .init(identifier: "cr")
        case .croatian: return .init(identifier: "hr_HR")
        case .czech: return .init(identifier: "cs_CZ")
        case .dzongkha: return .init(identifier: "dz")
        case .esperanto: return .init(identifier: "eo")
        case .estonian: return .init(identifier: "et_EE")
        case .ewe: return .init(identifier: "ee")
        case .faroese: return .init(identifier: "fo_FO")
        case .fijian: return .init(identifier: "fj")
        case .finnish: return .init(identifier: "fi_FI")
        case .galician: return .init(identifier: "gl_ES")
        case .gaelicScottish: return .init(identifier: "gd")
        case .georgian: return .init(identifier: "ka_GE")
        case .greek: return .init(identifier: "el_GR")
        case .guarani: return .init(identifier: "gn")
        case .gujarati: return .init(identifier: "gu_IN")
        case .haitianCreole: return .init(identifier: "ht")
        case .hausa: return .init(identifier: "ha")
        case .hebrew: return .init(identifier: "he_IL")
        case .herero: return .init(identifier: "hz")
        case .hiriMotu: return .init(identifier: "ho")
        case .hungarian: return .init(identifier: "hu_HU")
        case .icelandic: return .init(identifier: "is_IS")
        case .ido: return .init(identifier: "io")
        case .igbo: return .init(identifier: "ig")
        case .interlingua: return .init(identifier: "ia")
        case .interlingue: return .init(identifier: "ie")
        case .inuktitut: return .init(identifier: "iu")
        case .inupiak: return .init(identifier: "ik")
        case .kannada: return .init(identifier: "kn_IN")
        case .kanuri: return .init(identifier: "kr")
        case .kashmiri: return .init(identifier: "ks")
        case .kazakh: return .init(identifier: "kk_KZ")
        case .khmer: return .init(identifier: "km_KH")
        case .kikuyu: return .init(identifier: "ki")
        case .kinyarwanda: return .init(identifier: "rw_RW")
        case .kirundi: return .init(identifier: "rn")
        case .kyrgyz: return .init(identifier: "ky_KG")
        case .komi: return .init(identifier: "kv")
        case .kongo: return .init(identifier: "kg")
        case .kurdish: return .init(identifier: "ku")
        case .kwanyama: return .init(identifier: "kj")
        case .lao: return .init(identifier: "lo_LA")
        case .latin: return .init(identifier: "la")
        case .latvian: return .init(identifier: "lv_LV")
        case .limburgish: return .init(identifier: "li")
        case .lingala: return .init(identifier: "ln")
        case .lithuanian: return .init(identifier: "lt_LT")
        case .lugaKatanga: return .init(identifier: "lu")
        case .luxembourgish: return .init(identifier: "lb")
        case .manx: return .init(identifier: "gv")
        case .macedonian: return .init(identifier: "mk_MK")
        case .malagasy: return .init(identifier: "mg")
        case .malay: return .init(identifier: "ms_MY")
        case .malayalam: return .init(identifier: "ml_IN")
        case .maltese: return .init(identifier: "mt_MT")
        case .maori: return .init(identifier: "mi")
        case .marathi: return .init(identifier: "mr_IN")
        case .marshallese: return .init(identifier: "mh")
        case .moldavian: return .init(identifier: "ro_MD")
        case .mongolian: return .init(identifier: "mn_MN")
        case .nauru: return .init(identifier: "na")
        case .navajo: return .init(identifier: "nv")
        case .ndonga: return .init(identifier: "ng")
        case .northernNdebele: return .init(identifier: "nd")
        case .nepali: return .init(identifier: "ne_NP")
        case .norwegian: return .init(identifier: "no_NO")
        case .norwegianBokmål: return .init(identifier: "nb_NO")
        case .norwegianNynorsk: return .init(identifier: "nn_NO")
        case .occitan: return .init(identifier: "oc")
        case .ojibwe: return .init(identifier: "oj")
        case .oriya: return .init(identifier: "or")
        case .oromo: return .init(identifier: "om")
        case .ossetian: return .init(identifier: "os")
        case .pāli: return .init(identifier: "pi")
        case .persian: return .init(identifier: "fa_IR")
        case .punjabi: return .init(identifier: "pa_IN")
        case .quechua: return .init(identifier: "qu")
        case .romansh: return .init(identifier: "rm")
        case .sami: return .init(identifier: "se")
        case .samoan: return .init(identifier: "sm")
        case .sango: return .init(identifier: "sg")
        case .sanskrit: return .init(identifier: "sa")
        case .serbian: return .init(identifier: "sr_RS")
        case .serboCroatian: return .init(identifier: "sh")
        case .sesotho: return .init(identifier: "st")
        case .setswana: return .init(identifier: "tn")
        case .shona: return .init(identifier: "sn")
        case .sindhi: return .init(identifier: "sd")
        case .sinhalese: return .init(identifier: "si_LK")
        case .somali: return .init(identifier: "so")
        case .southernNdebele: return .init(identifier: "nr")
        case .sundanese: return .init(identifier: "su")
        case .swahili: return .init(identifier: "sw")
        case .swati: return .init(identifier: "ss")
        case .tagalog: return .init(identifier: "tl_PH")
        case .tahitian: return .init(identifier: "ty")
        case .tajik: return .init(identifier: "tg")
        case .tamil: return .init(identifier: "ta_IN")
        case .tatar: return .init(identifier: "tt")
        case .telugu: return .init(identifier: "te_IN")
        case .thai: return .init(identifier: "th_TH")
        case .tibetan: return .init(identifier: "bo")
        case .tigrinya: return .init(identifier: "ti")
        case .tonga: return .init(identifier: "to")
        case .tsonga: return .init(identifier: "ts")
        case .turkmen: return .init(identifier: "tk")
        case .twi: return .init(identifier: "tw")
        case .uyghur: return .init(identifier: "ug")
        case .ukEnglish: return .init(identifier: "en_GB")
        case .ukrainian: return .init(identifier: "uk_UA")
        case .urdu: return .init(identifier: "ur_PK")
        case .usEnglish: return .init(identifier: "en_US")
        case .uzbek: return .init(identifier: "uz_UZ")
        case .venda: return .init(identifier: "ve")
        case .vietnamese: return .init(identifier: "vi_VN")
        case .volapük: return .init(identifier: "vo")
        case .wallon: return .init(identifier: "wa")
        case .welsh: return .init(identifier: "cy_GB")
        case .wolof: return .init(identifier: "wo")
        case .westernFrisian: return .init(identifier: "fy")
        case .xhosa: return .init(identifier: "xh")
        case .yoruba: return .init(identifier: "yo")
        case .zulu: return .init(identifier: "zu")
        }
    }
}

public extension Language {
    static func preferredLanguageForUser() -> Self {

        if let language = Locale.preferredLanguages.first {
            switch language {
            case "en", "en-US", "en-UK": return .english
            case "fr", "fr-FR": return .french
            case "de", "de-DE": return .german
            case "es", "es-ES": return .spanish
            case "nl-NL", "nl": return .dutch
            default: return .english
            }

        } else {
            return .english
        }
    }
}





/*
 
 sort the cases alphabetically:

 public indirect enum Language: String, CaseIterable, Hashable, Equatable, Codable, Sendable {
     case arabic = "ar"
     case bengali = "bn"
     case chinese = "zh"
     case danish = "da"
     case dutch = "nl"
     case english = "en"
     case french = "fr"
     case german = "de"
     case hindi = "hi"
     case indonesian = "id"
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
     case abkhazian = "ab"
     case afar = "aa"
     case afrikaans = "af"
     case akan = "ak"
     case albanian = "sq"
     case amharic = "am"
     case aragonese = "an"
     case armenian = "hy"
     case assamese = "as"
     case auEnglish = "en-au"
     case avaric = "av"
     case avestan = "ae"
     case aymara = "ay"
     case azerbaijani = "az"
     case bambara = "bm"
     case bashkir = "ba"
     case basque = "eu"
     case belarusian = "be"
     case bihari = "bh"
     case bislama = "bi"
     case bosnian = "bs"
     case breton = "br"
     case bulgarian = "bg"
     case burmese = "my"
     case caEnglish = "en-ca"
     case catalan = "ca"
     case chamorro = "ch"
     case chechen = "ce"
 //// case chichewa, chewa, nyanja = "ny"

     case chuvash = "cv"
     case cornish = "kw"
     case corsican = "co"
     case cree = "cr"
     case croatian = "hr"
     case czech = "cs"

 //// case divehi, dhivehi, maldivian = "dv"

     case dzongkha = "dz"

     case esperanto = "eo"
     case estonian = "et"
     case ewe = "ee"
     case faroese = "fo"
     case fijian = "fj"
     case finnish = "fi"

 ////// case fula, fulah, pulaar, pular = "ff"
     case galician = "gl"
     case gaelicScottish = "gd"
     case georgian = "ka"

     case greek = "el"
     case guarani = "gn"
     case gujarati = "gu"
     case haitianCreole = "ht"
     case hausa = "ha"
     case hebrew = "he"
     case herero = "hz"

     case hiriMotu = "ho"
     case hungarian = "hu"
     case icelandic = "is"
     case ido = "io"
     case igbo = "ig"

     case interlingua = "ia"
     case interlingue = "ie"
     case inuktitut = "iu"
     case inupiak = "ik"

 // case kalaallisut, greenlandic = "kl"
     case kannada = "kn"
     case kanuri = "kr"
     case kashmiri = "ks"
     case kazakh = "kk"
     case khmer = "km"
     case kikuyu = "ki"
     case kinyarwanda = "rw"
     case kirundi = "rn"
     case kyrgyz = "ky"
     case komi = "kv"
     case kongo = "kg"

     case kurdish = "ku"
     case kwanyama = "kj"
     case lao = "lo"
     case latin = "la"
     case latvian = "lv"
     case limburgish = "li"
     case lingala = "ln"
     case lithuanian = "lt"
     case lugaKatanga = "lu"
 // case luganda, ganda = "lg"
     case luxembourgish = "lb"
     case manx = "gv"
     case macedonian = "mk"
     case malagasy = "mg"
     case malay = "ms"
     case malayalam = "ml"
     case maltese = "mt"
     case maori = "mi"
     case marathi = "mr"
     case marshallese = "mh"
     case moldavian = "mo"
     case mongolian = "mn"
     case nauru = "na"
     case navajo = "nv"
     case ndonga = "ng"
     case northernNdebele = "nd"
     case nepali = "ne"
     case norwegian = "no"
     case norwegianBokmål = "nb"
     case norwegianNynorsk = "nn"
 // case nuosu, sichuanYi = "ii"
     case occitan = "oc"
     case ojibwe = "oj"
 // case oldChurchSlavonic, oldBulgarian = "cu"
     case oriya = "or"
     case oromo = "om"
     case ossetian = "os"
     case pāli = "pi"
 // case pashto, pushto = "ps"
     case persian = "fa"

     case punjabi = "pa"
     case quechua = "qu"
     case romansh = "rm"

     case sami = "se"
     case samoan = "sm"
     case sango = "sg"
     case sanskrit = "sa"
     case serbian = "sr"
     case serboCroatian = "sh"
     case sesotho = "st"
     case setswana = "tn"
     case shona = "sn"
     case sindhi = "sd"
     case sinhalese = "si"

     case somali = "so"
     case southernNdebele = "nr"

     case sundanese = "su"
     case swahili = "sw"
     case swati = "ss"

     case tagalog = "tl"
     case tahitian = "ty"
     case tajik = "tg"
     case tamil = "ta"
     case tatar = "tt"
     case telugu = "te"
     case thai = "th"
     case tibetan = "bo"
     case tigrinya = "ti"
     case tonga = "to"
     case tsonga = "ts"

     case turkmen = "tk"
     case twi = "tw"
     case uyghur = "ug"
     case ukEnglish = "en-gb"
     case ukrainian = "uk"
     case urdu = "ur"
     case usEnglish = "en-us"
     case uzbek = "uz"
     case venda = "ve"
     case vietnamese = "vi"
     case volapük = "vo"
     case wallon = "wa"
     case welsh = "cy"
     case wolof = "wo"
     case westernFrisian = "fy"
     case xhosa = "xh"
 // case yiddish = "yi, ji"
     case yoruba = "yo"
 // case zhuang, chuang = "za"
     case zulu = "zu"
 }
 */
