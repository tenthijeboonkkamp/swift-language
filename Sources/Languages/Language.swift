import Foundation

// extension Language {
//    public static var current:Language = .english
// }

public enum Language: String, CaseIterable, Hashable, Equatable, Codable, Sendable {
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
//    case irish = "ga"
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
////// case chichewa, chewa, nyanja = "ny"
//
//    case chuvash = "cv"
//    case cornish = "kw"
//    case corsican = "co"
//    case cree = "cr"
//    case croatian = "hr"
//    case czech = "cs"
//
////// case divehi, dhivehi, maldivian = "dv"
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
//////// case fula, fulah, pulaar, pular = "ff"
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

//    case interlingua = "ia"
//    case interlingue = "ie"
//    case inuktitut = "iu"
//    case inupiak = "ik"
//
//// case kalaallisut, greenlandic = "kl"
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
//// case luganda, ganda = "lg"
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
//// case nuosu, sichuanYi = "ii"
//    case occitan = "oc"
//    case ojibwe = "oj"
//// case oldChurchSlavonic, oldBulgarian = "cu"
//    case oriya = "or"
//    case oromo = "om"
//    case ossetian = "os"
//    case pāli = "pi"
//// case pashto, pushto = "ps"
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
//// case yiddish = "yi, ji"
//    case yoruba = "yo"
//// case zhuang, chuang = "za"
//    case zulu = "zu"

//    case xDefault = "x-default"
}

public extension Language {

    static let title: SinglePlural<Translated<String>> = .init(
        single: .init(dutch: "Taal", english: "Language"),
        plural: .init(dutch: "Talen", english: "Languages")
    )

    enum LabelLength: String, Hashable, Equatable, Codable {
        case short, normal
    }

    var label: Translated<String> { label(.normal) }

    var name: Translated<String> {
        switch self {
        case .arabic: .init(
            arabic: "عربي",
            english: "Arabic"
        )
        case .bengali: .init(
            bengali: "বাংলা",
            english: "Bengali"
        )
        case .chinese: .init(
            chinese: "中国人",
            english: "Chinese"
        )
        case .danish: .init(
            danish: "dansk",
            english: "Danish"
        )
        case .dutch: .init(
            dutch: "Nederlands",
            english: "Dutch",
            french: "Néerlandais",
            german: "Niederländisch",
            spanish: "Holandés"
        )
        case .english: .init(
            dutch: "Engels",
            english: "English",
            french: "Anglais",
            german: "Englisch",
            spanish: "Inglés"
        )
        case .french: .init(
            dutch: "Frans",
            english: "French",
            french: "Français",
            german: "Französisch",
            spanish: "Francés"
        )
        case .german: .init(
            dutch: "Duits",
            english: "German",
            french: "Allemand",
            german: "Deutsch",
            spanish: "Alemán"
        )
        case .hindi: .init(
            english: "Hindi",
            hindi: "हिंदी"
        )
        case .indonesian: .init(
            english: "indonesian",
            indonesian: "irlandesi"
        )
        case .italian: .init(
            english: "Italian",
            italian: "Italiano"
        )
        case .japanese: .init(
            english: "Japanese",
            japanese: "日本語"
        )
        case .javanese: .init(
            english: "Javanese",
            javanese: "Basa Jawa"
        )
        case .korean: .init(
            english: "Korean",
            korean: "한국인"
        )
        case .polish: .init(
            english: "Polish",
            polish: "Polski"
        )
        case .portuguese: .init(
            english: "Portuguese",
            portuguese: "Português"
        )
        case .romanian: .init(
            english: "Romanian",
            romanian: "Română"
        )
        case .russian: .init(
            english: "Russian",
            russian: "Pусский"
        )
        case .slovak: .init(
            english: "Slovak",
            slovak: "slovenský"
        )
        case .slovenian: .init(
            english: "Slovenian",
            slovenian: "Slovenščina"
        )
        case .spanish: .init(
            dutch: "Spaans",
            english: "Spanish",
            french: "Espagnol",
            german: "Spanisch",
            spanish: "Espagnol"
        )
        case .swedish: .init(
            english: "Swedish",
            swedish: "Tvåds"
        )
        case .turkish: .init(
            english: "Turkish",
            turkish: "Türkçe"
        )
        }
    }

    func label(_ length: LabelLength = .normal) -> Translated<String> {

        switch length {
        case .short: .init(self.rawValue)
        case .normal: self.name
        }
    }
}

public extension [Language] {
    func sort() -> Self {
        self.sorted { language1, language2 in
            language1.label()(language1) < language2.label()(language2)
        }
    }
}

public let all: [Language] = Language.allCases

public extension Locale {
    static var autoupdatingLanguage: Languages.Language {
        switch Self.autoupdatingCurrent.identifier {
        case "nl_NL": return .dutch
        case "en_EN": return .english
        case "euro(en_001@rg=nlzzzz": return .english
        default: return .english
        }
    }
}

public extension String {
    static func translated(
        dutch: String? = nil,
        english: String,
        french: String? = nil,
        german: String? = nil,
        spanish: String? = nil,
        language: Languages.Language
    ) -> String {
        Translated<String>(dutch: dutch, english: english, french: french, german: german, spanish: spanish)(language)
    }

    init(
        dutch: String? = nil,
        english: String,
        french: String? = nil,
        german: String? = nil,
        spanish: String? = nil,
        language: Languages.Language
    ) {
        self = Translated<String>(dutch: dutch, english: english, french: french, german: german, spanish: spanish)(language)
    }
}

//
// public extension Language {
//    init(locale: Locale) {
//        switch locale.language {
//        case "af": self = .default
//        case "af_NA": self = .default
//        case "af_ZA": self = .default
//        case "agq": self = .default
//        case "agq_CM": self = .default
//        case "ain": self = .default
//        case "ain_JP": self = .default
//        case "ak": self = .default
//        case "ak_GH": self = .default
//        case "am": self = .default
//        case "am_ET": self = .default
//        case "ar": self = .default
//        case "ar_001": self = .default
//        case "ar_AE": self = .default
//        case "ar_BH": self = .default
//        case "ar_DJ": self = .default
//        case "ar_DZ": self = .default
//        case "ar_EG": self = .default
//        case "ar_EH": self = .default
//        case "ar_ER": self = .default
//        case "ar_IL": self = .default
//        case "ar_IQ": self = .default
//        case "ar_JO": self = .default
//        case "ar_KM": self = .default
//        case "ar_KW": self = .default
//        case "ar_LB": self = .default
//        case "ar_LY": self = .default
//        case "ar_MA": self = .default
//        case "ar_MR": self = .default
//        case "ar_OM": self = .default
//        case "ar_PS": self = .default
//        case "ar_QA": self = .default
//        case "ar_SA": self = .default
//        case "ar_SD": self = .default
//        case "ar_SO": self = .default
//        case "ar_SS": self = .default
//        case "ar_SY": self = .default
//        case "ar_TD": self = .default
//        case "ar_TN": self = .default
//        case "ar_YE": self = .default
//        case "arn": self = .default
//        case "arn_CL": self = .default
//        case "as": self = .default
//        case "as_IN": self = .default
//        case "asa": self = .default
//        case "asa_TZ": self = .default
//        case "ast": self = .default
//        case "ast_ES": self = .default
//        case "az": self = .default
//        case "az_Cyrl": self = .default
//        case "az_Cyrl_AZ": self = .default
//        case "az_Latn": self = .default
//        case "az_Latn_AZ": self = .default
//        case "ba": self = .default
//        case "ba_RU": self = .default
//        case "bas": self = .default
//        case "bas_CM": self = .default
//        case "be": self = .default
//        case "be_BY": self = .default
//        case "bem": self = .default
//        case "bem_ZM": self = .default
//        case "bez": self = .default
//        case "bez_TZ": self = .default
//        case "bg": self = .default
//        case "bg_BG": self = .default
//        case "bm": self = .default
//        case "bm_ML": self = .default
//        case "bn": self = .default
//        case "bn_BD": self = .default
//        case "bn_IN": self = .default
//        case "bo": self = .default
//        case "bo_CN": self = .default
//        case "bo_IN": self = .default
//        case "br": self = .default
//        case "br_FR": self = .default
//        case "brx": self = .default
//        case "brx_IN": self = .default
//        case "bs": self = .default
//        case "bs_Cyrl": self = .default
//        case "bs_Cyrl_BA": self = .default
//        case "bs_Latn": self = .default
//        case "bs_Latn_BA": self = .default
//        case "byn": self = .default
//        case "byn_ER": self = .default
//        case "ca": self = .default
//        case "ca_AD": self = .default
//        case "ca_ES": self = .default
//        case "ca_FR": self = .default
//        case "ca_IT": self = .default
//        case "ccp": self = .default
//        case "ccp_BD": self = .default
//        case "ccp_IN": self = .default
//        case "ce": self = .default
//        case "ce_RU": self = .default
//        case "ceb": self = .default
//        case "ceb_PH": self = .default
//        case "cgg": self = .default
//        case "cgg_UG": self = .default
//        case "chr": self = .default
//        case "chr_US": self = .default
//        case "ckb": self = .default
//        case "ckb_IQ": self = .default
//        case "ckb_IR": self = .default
//        case "co": self = .default
//        case "co_FR": self = .default
//        case "cs": self = .default
//        case "cs_CZ": self = .default
//        case "cv": self = .default
//        case "cv_RU": self = .default
//        case "cy": self = .default
//        case "cy_GB": self = .default
//        case "da": self = .default
//        case "da_DK": self = .default
//        case "da_GL": self = .default
//        case "dav": self = .default
//        case "dav_KE": self = .default
//        case "de": self = .default
//        case "de_AT": self = .default
//        case "de_BE": self = .default
//        case "de_CH": self = .default
//        case "de_DE": self = .default
//        case "de_IT": self = .default
//        case "de_LI": self = .default
//        case "de_LU": self = .default
//        case "dje": self = .default
//        case "dje_NE": self = .default
//        case "doi": self = .default
//        case "doi_IN": self = .default
//        case "dsb": self = .default
//        case "dsb_DE": self = .default
//        case "dua": self = .default
//        case "dua_CM": self = .default
//        case "dv": self = .default
//        case "dv_MV": self = .default
//        case "dyo": self = .default
//        case "dyo_SN": self = .default
//        case "dz": self = .default
//        case "dz_BT": self = .default
//        case "ebu": self = .default
//        case "ebu_KE": self = .default
//        case "ee": self = .default
//        case "ee_GH": self = .default
//        case "ee_TG": self = .default
//        case "el": self = .default
//        case "el_CY": self = .default
//        case "el_GR": self = .default
//        case "en": self = .default
//        case "en_001": self = .default
//        case "en_150": self = .default
//        case "en_AE": self = .default
//        case "en_AG": self = .default
//        case "en_AI": self = .default
//        case "en_AL": self = .default
//        case "en_AR": self = .default
//        case "en_AS": self = .default
//        case "en_AT": self = .default
//        case "en_AU": self = .default
//        case "en_BB": self = .default
//        case "en_BD": self = .default
//        case "en_BE": self = .default
//        case "en_BG": self = .default
//        case "en_BI": self = .default
//        case "en_BM": self = .default
//        case "en_BN": self = .default
//        case "en_BR": self = .default
//        case "en_BS": self = .default
//        case "en_BW": self = .default
//        case "en_BZ": self = .default
//        case "en_CA": self = .default
//        case "en_CC": self = .default
//        case "en_CH": self = .default
//        case "en_CK": self = .default
//        case "en_CL": self = .default
//        case "en_CM": self = .default
//        case "en_CN": self = .default
//        case "en_CO": self = .default
//        case "en_CX": self = .default
//        case "en_CY": self = .default
//        case "en_CZ": self = .default
//        case "en_DE": self = .default
//        case "en_DG": self = .default
//        case "en_DK": self = .default
//        case "en_DM": self = .default
//        case "en_EE": self = .default
//        case "en_ER": self = .default
//        case "en_FI": self = .default
//        case "en_FJ": self = .default
//        case "en_FK": self = .default
//        case "en_FM": self = .default
//        case "en_FR": self = .default
//        case "en_GB": self = .default
//        case "en_GD": self = .default
//        case "en_GG": self = .default
//        case "en_GH": self = .default
//        case "en_GI": self = .default
//        case "en_GM": self = .default
//        case "en_GR": self = .default
//        case "en_GU": self = .default
//        case "en_GY": self = .default
//        case "en_HK": self = .default
//        case "en_HU": self = .default
//        case "en_ID": self = .default
//        case "en_IE": self = .default
//        case "en_IL": self = .default
//        case "en_IM": self = .default
//        case "en_IN": self = .default
//        case "en_IO": self = .default
//        case "en_JE": self = .default
//        case "en_JM": self = .default
//        case "en_JP": self = .default
//        case "en_KE": self = .default
//        case "en_KI": self = .default
//        case "en_KN": self = .default
//        case "en_KR": self = .default
//        case "en_KY": self = .default
//        case "en_LC": self = .default
//        case "en_LR": self = .default
//        case "en_LS": self = .default
//        case "en_LT": self = .default
//        case "en_LV": self = .default
//        case "en_MG": self = .default
//        case "en_MH": self = .default
//        case "en_MM": self = .default
//        case "en_MO": self = .default
//        case "en_MP": self = .default
//        case "en_MS": self = .default
//        case "en_MT": self = .default
//        case "en_MU": self = .default
//        case "en_MV": self = .default
//        case "en_MW": self = .default
//        case "en_MX": self = .default
//        case "en_MY": self = .default
//        case "en_NA": self = .default
//        case "en_NF": self = .default
//        case "en_NG": self = .default
//        case "en_NL": self = .default
//        case "en_NO": self = .default
//        case "en_NR": self = .default
//        case "en_NU": self = .default
//        case "en_NZ": self = .default
//        case "en_PG": self = .default
//        case "en_PH": self = .default
//        case "en_PK": self = .default
//        case "en_PL": self = .default
//        case "en_PN": self = .default
//        case "en_PR": self = .default
//        case "en_PT": self = .default
//        case "en_PW": self = .default
//        case "en_RU": self = .default
//        case "en_RW": self = .default
//        case "en_SA": self = .default
//        case "en_SB": self = .default
//        case "en_SC": self = .default
//        case "en_SD": self = .default
//        case "en_SE": self = .default
//        case "en_SG": self = .default
//        case "en_SH": self = .default
//        case "en_SI": self = .default
//        case "en_SK": self = .default
//        case "en_SL": self = .default
//        case "en_SS": self = .default
//        case "en_SX": self = .default
//        case "en_SZ": self = .default
//        case "en_TC": self = .default
//        case "en_TH": self = .default
//        case "en_TK": self = .default
//        case "en_TO": self = .default
//        case "en_TR": self = .default
//        case "en_TT": self = .default
//        case "en_TV": self = .default
//        case "en_TW": self = .default
//        case "en_TZ": self = .default
//        case "en_UA": self = .default
//        case "en_UG": self = .default
//        case "en_UM": self = .default
//        case "en_US": self = .default
//        case "en_US_POSIX": self = .default
//        case "en_VC": self = .default
//        case "en_VG": self = .default
//        case "en_VI": self = .default
//        case "en_VU": self = .default
//        case "en_WS": self = .default
//        case "en_ZA": self = .default
//        case "en_ZM": self = .default
//        case "en_ZW": self = .default
//        case "eo": self = .default
//        case "eo_001": self = .default
//        case "es": self = .default
//        case "es_003": self = .default
//        case "es_419": self = .default
//        case "es_AG": self = .default
//        case "es_AR": self = .default
//        case "es_BB": self = .default
//        case "es_BM": self = .default
//        case "es_BO": self = .default
//        case "es_BQ": self = .default
//        case "es_BR": self = .default
//        case "es_BS": self = .default
//        case "es_BZ": self = .default
//        case "es_CA": self = .default
//        case "es_CL": self = .default
//        case "es_CO": self = .default
//        case "es_CR": self = .default
//        case "es_CU": self = .default
//        case "es_CW": self = .default
//        case "es_DM": self = .default
//        case "es_DO": self = .default
//        case "es_EA": self = .default
//        case "es_EC": self = .default
//        case "es_ES": self = .default
//        case "es_GD": self = .default
//        case "es_GQ": self = .default
//        case "es_GT": self = .default
//        case "es_GY": self = .default
//        case "es_HN": self = .default
//        case "es_HT": self = .default
//        case "es_IC": self = .default
//        case "es_KN": self = .default
//        case "es_KY": self = .default
//        case "es_LC": self = .default
//        case "es_MX": self = .default
//        case "es_NI": self = .default
//        case "es_PA": self = .default
//        case "es_PE": self = .default
//        case "es_PH": self = .default
//        case "es_PR": self = .default
//        case "es_PY": self = .default
//        case "es_SV": self = .default
//        case "es_TC": self = .default
//        case "es_TT": self = .default
//        case "es_US": self = .default
//        case "es_UY": self = .default
//        case "es_VC": self = .default
//        case "es_VE": self = .default
//        case "es_VG": self = .default
//        case "es_VI": self = .default
//        case "et": self = .default
//        case "et_EE": self = .default
//        case "eu": self = .default
//        case "eu_ES": self = .default
//        case "ewo": self = .default
//        case "ewo_CM": self = .default
//        case "fa": self = .default
//        case "fa_AF": self = .default
//        case "fa_IR": self = .default
//        case "ff": self = .default
//        case "ff_Adlm": self = .default
//        case "ff_Adlm_BF": self = .default
//        case "ff_Adlm_CM": self = .default
//        case "ff_Adlm_GH": self = .default
//        case "ff_Adlm_GM": self = .default
//        case "ff_Adlm_GN": self = .default
//        case "ff_Adlm_GW": self = .default
//        case "ff_Adlm_LR": self = .default
//        case "ff_Adlm_MR": self = .default
//        case "ff_Adlm_NE": self = .default
//        case "ff_Adlm_NG": self = .default
//        case "ff_Adlm_SL": self = .default
//        case "ff_Adlm_SN": self = .default
//        case "ff_Latn": self = .default
//        case "ff_Latn_BF": self = .default
//        case "ff_Latn_CM": self = .default
//        case "ff_Latn_GH": self = .default
//        case "ff_Latn_GM": self = .default
//        case "ff_Latn_GN": self = .default
//        case "ff_Latn_GW": self = .default
//        case "ff_Latn_LR": self = .default
//        case "ff_Latn_MR": self = .default
//        case "ff_Latn_NE": self = .default
//        case "ff_Latn_NG": self = .default
//        case "ff_Latn_SL": self = .default
//        case "ff_Latn_SN": self = .default
//        case "fi": self = .default
//        case "fi_FI": self = .default
//        case "fil": self = .default
//        case "fil_PH": self = .default
//        case "fo": self = .default
//        case "fo_DK": self = .default
//        case "fo_FO": self = .default
//        case "fr": self = .default
//        case "fr_BE": self = .default
//        case "fr_BF": self = .default
//        case "fr_BI": self = .default
//        case "fr_BJ": self = .default
//        case "fr_BL": self = .default
//        case "fr_CA": self = .default
//        case "fr_CD": self = .default
//        case "fr_CF": self = .default
//        case "fr_CG": self = .default
//        case "fr_CH": self = .default
//        case "fr_CI": self = .default
//        case "fr_CM": self = .default
//        case "fr_DJ": self = .default
//        case "fr_DZ": self = .default
//        case "fr_FR": self = .default
//        case "fr_GA": self = .default
//        case "fr_GF": self = .default
//        case "fr_GN": self = .default
//        case "fr_GP": self = .default
//        case "fr_GQ": self = .default
//        case "fr_HT": self = .default
//        case "fr_KM": self = .default
//        case "fr_LU": self = .default
//        case "fr_MA": self = .default
//        case "fr_MC": self = .default
//        case "fr_MF": self = .default
//        case "fr_MG": self = .default
//        case "fr_ML": self = .default
//        case "fr_MQ": self = .default
//        case "fr_MR": self = .default
//        case "fr_MU": self = .default
//        case "fr_NC": self = .default
//        case "fr_NE": self = .default
//        case "fr_PF": self = .default
//        case "fr_PM": self = .default
//        case "fr_RE": self = .default
//        case "fr_RW": self = .default
//        case "fr_SC": self = .default
//        case "fr_SN": self = .default
//        case "fr_SY": self = .default
//        case "fr_TD": self = .default
//        case "fr_TG": self = .default
//        case "fr_TN": self = .default
//        case "fr_VU": self = .default
//        case "fr_WF": self = .default
//        case "fr_YT": self = .default
//        case "fur": self = .default
//        case "fur_IT": self = .default
//        case "fy": self = .default
//        case "fy_NL": self = .default
//        case "ga": self = .default
//        case "ga_GB": self = .default
//        case "ga_IE": self = .default
//        case "gaa": self = .default
//        case "gaa_GH": self = .default
//        case "gd": self = .default
//        case "gd_GB": self = .default
//        case "gez": self = .default
//        case "gez_ER": self = .default
//        case "gez_ET": self = .default
//        case "gl": self = .default
//        case "gl_ES": self = .default
//        case "gn": self = .default
//        case "gn_PY": self = .default
//        case "gsw": self = .default
//        case "gsw_CH": self = .default
//        case "gsw_FR": self = .default
//        case "gsw_LI": self = .default
//        case "gu": self = .default
//        case "gu_IN": self = .default
//        case "guz": self = .default
//        case "guz_KE": self = .default
//        case "gv": self = .default
//        case "gv_IM": self = .default
//        case "ha": self = .default
//        case "ha_GH": self = .default
//        case "ha_NE": self = .default
//        case "ha_NG": self = .default
//        case "haw": self = .default
//        case "haw_US": self = .default
//        case "he": self = .default
//        case "he_IL": self = .default
//        case "hi": self = .default
//        case "hi_IN": self = .default
//        case "hi_Latn": self = .default
//        case "hi_Latn_IN": self = .default
//        case "hr": self = .default
//        case "hr_BA": self = .default
//        case "hr_HR": self = .default
//        case "hsb": self = .default
//        case "hsb_DE": self = .default
//        case "hu": self = .default
//        case "hu_HU": self = .default
//        case "hy": self = .default
//        case "hy_AM": self = .default
//        case "ia": self = .default
//        case "ia_001": self = .default
//        case "id": self = .default
//        case "id_ID": self = .default
//        case "ig": self = .default
//        case "ig_NG": self = .default
//        case "ii": self = .default
//        case "ii_CN": self = .default
//        case "io": self = .default
//        case "io_001": self = .default
//        case "is": self = .default
//        case "is_IS": self = .default
//        case "it": self = .default
//        case "it_CH": self = .default
//        case "it_IT": self = .default
//        case "it_SM": self = .default
//        case "it_VA": self = .default
//        case "iu": self = .default
//        case "iu_CA": self = .default
//        case "ja": self = .default
//        case "ja_JP": self = .default
//        case "jbo": self = .default
//        case "jbo_001": self = .default
//        case "jgo": self = .default
//        case "jgo_CM": self = .default
//        case "jmc": self = .default
//        case "jmc_TZ": self = .default
//        case "jv": self = .default
//        case "jv_ID": self = .default
//        case "ka": self = .default
//        case "ka_GE": self = .default
//        case "kab": self = .default
//        case "kab_DZ": self = .default
//        case "kaj": self = .default
//        case "kaj_NG": self = .default
//        case "kam": self = .default
//        case "kam_KE": self = .default
//        case "kcg": self = .default
//        case "kcg_NG": self = .default
//        case "kde": self = .default
//        case "kde_TZ": self = .default
//        case "kea": self = .default
//        case "kea_CV": self = .default
//        case "khq": self = .default
//        case "khq_ML": self = .default
//        case "ki": self = .default
//        case "ki_KE": self = .default
//        case "kk": self = .default
//        case "kk_KZ": self = .default
//        case "kkj": self = .default
//        case "kkj_CM": self = .default
//        case "kl": self = .default
//        case "kl_GL": self = .default
//        case "kln": self = .default
//        case "kln_KE": self = .default
//        case "km": self = .default
//        case "km_KH": self = .default
//        case "kn": self = .default
//        case "kn_IN": self = .default
//        case "ko": self = .default
//        case "ko_KP": self = .default
//        case "ko_KR": self = .default
//        case "kok": self = .default
//        case "kok_IN": self = .default
//        case "kpe": self = .default
//        case "kpe_GN": self = .default
//        case "kpe_LR": self = .default
//        case "ks": self = .default
//        case "ks_Arab": self = .default
//        case "ks_Arab_IN": self = .default
//        case "ks_Aran_IN": self = .default
//        case "ks_Deva": self = .default
//        case "ks_Deva_IN": self = .default
//        case "ksb": self = .default
//        case "ksb_TZ": self = .default
//        case "ksf": self = .default
//        case "ksf_CM": self = .default
//        case "ksh": self = .default
//        case "ksh_DE": self = .default
//        case "ku": self = .default
//        case "ku_TR": self = .default
//        case "kw": self = .default
//        case "kw_GB": self = .default
//        case "ky": self = .default
//        case "ky_KG": self = .default
//        case "lag": self = .default
//        case "lag_TZ": self = .default
//        case "lb": self = .default
//        case "lb_LU": self = .default
//        case "lg": self = .default
//        case "lg_UG": self = .default
//        case "lkt": self = .default
//        case "lkt_US": self = .default
//        case "ln": self = .default
//        case "ln_AO": self = .default
//        case "ln_CD": self = .default
//        case "ln_CF": self = .default
//        case "ln_CG": self = .default
//        case "lo": self = .default
//        case "lo_LA": self = .default
//        case "lrc": self = .default
//        case "lrc_IQ": self = .default
//        case "lrc_IR": self = .default
//        case "lt": self = .default
//        case "lt_LT": self = .default
//        case "lu": self = .default
//        case "lu_CD": self = .default
//        case "luo": self = .default
//        case "luo_KE": self = .default
//        case "luy": self = .default
//        case "luy_KE": self = .default
//        case "lv": self = .default
//        case "lv_LV": self = .default
//        case "mai": self = .default
//        case "mai_IN": self = .default
//        case "mas": self = .default
//        case "mas_KE": self = .default
//        case "mas_TZ": self = .default
//        case "mer": self = .default
//        case "mer_KE": self = .default
//        case "mfe": self = .default
//        case "mfe_MU": self = .default
//        case "mg": self = .default
//        case "mg_MG": self = .default
//        case "mgh": self = .default
//        case "mgh_MZ": self = .default
//        case "mgo": self = .default
//        case "mgo_CM": self = .default
//        case "mi": self = .default
//        case "mi_NZ": self = .default
//        case "mk": self = .default
//        case "mk_MK": self = .default
//        case "ml": self = .default
//        case "ml_IN": self = .default
//        case "mn": self = .default
//        case "mn_MN": self = .default
//        case "mni": self = .default
//        case "mni_Beng": self = .default
//        case "mni_Beng_IN": self = .default
//        case "mni_Mtei": self = .default
//        case "mni_Mtei_IN": self = .default
//        case "moh": self = .default
//        case "moh_CA": self = .default
//        case "mr": self = .default
//        case "mr_IN": self = .default
//        case "ms": self = .default
//        case "ms_Arab": self = .default
//        case "ms_Arab_BN": self = .default
//        case "ms_Arab_MY": self = .default
//        case "ms_BN": self = .default
//        case "ms_ID": self = .default
//        case "ms_MY": self = .default
//        case "ms_SG": self = .default
//        case "mt": self = .default
//        case "mt_MT": self = .default
//        case "mua": self = .default
//        case "mua_CM": self = .default
//        case "my": self = .default
//        case "my_MM": self = .default
//        case "myv": self = .default
//        case "myv_RU": self = .default
//        case "mzn": self = .default
//        case "mzn_IR": self = .default
//        case "naq": self = .default
//        case "naq_NA": self = .default
//        case "nb": self = .default
//        case "nb_NO": self = .default
//        case "nb_SJ": self = .default
//        case "nd": self = .default
//        case "nd_ZW": self = .default
//        case "nds": self = .default
//        case "nds_DE": self = .default
//        case "nds_NL": self = .default
//        case "ne": self = .default
//        case "ne_IN": self = .default
//        case "ne_NP": self = .default
//        case "nl": self = .default
//        case "nl_AW": self = .default
//        case "nl_BE": self = .default
//        case "nl_BQ": self = .default
//        case "nl_CW": self = .default
//        case "nl_NL": self = .default
//        case "nl_SR": self = .default
//        case "nl_SX": self = .default
//        case "nmg": self = .default
//        case "nmg_CM": self = .default
//        case "nn": self = .default
//        case "nn_NO": self = .default
//        case "nnh": self = .default
//        case "nnh_CM": self = .default
//        case "no": self = .default
//        case "nqo": self = .default
//        case "nqo_GN": self = .default
//        case "nr": self = .default
//        case "nr_ZA": self = .default
//        case "nso": self = .default
//        case "nso_ZA": self = .default
//        case "nus": self = .default
//        case "nus_SS": self = .default
//        case "nv": self = .default
//        case "nv_US": self = .default
//        case "ny": self = .default
//        case "ny_MW": self = .default
//        case "nyn": self = .default
//        case "nyn_UG": self = .default
//        case "oc": self = .default
//        case "oc_FR": self = .default
//        case "om": self = .default
//        case "om_ET": self = .default
//        case "om_KE": self = .default
//        case "or": self = .default
//        case "or_IN": self = .default
//        case "os": self = .default
//        case "os_GE": self = .default
//        case "os_RU": self = .default
//        case "pa": self = .default
//        case "pa_Arab": self = .default
//        case "pa_Arab_PK": self = .default
//        case "pa_Aran_PK": self = .default
//        case "pa_Guru": self = .default
//        case "pa_Guru_IN": self = .default
//        case "pcm": self = .default
//        case "pcm_NG": self = .default
//        case "pl": self = .default
//        case "pl_PL": self = .default
//        case "ps": self = .default
//        case "ps_AF": self = .default
//        case "ps_PK": self = .default
//        case "pt": self = .default
//        case "pt_AO": self = .default
//        case "pt_BR": self = .default
//        case "pt_CH": self = .default
//        case "pt_CV": self = .default
//        case "pt_FR": self = .default
//        case "pt_GQ": self = .default
//        case "pt_GW": self = .default
//        case "pt_LU": self = .default
//        case "pt_MO": self = .default
//        case "pt_MZ": self = .default
//        case "pt_PT": self = .default
//        case "pt_ST": self = .default
//        case "pt_TL": self = .default
//        case "qu": self = .default
//        case "qu_BO": self = .default
//        case "qu_EC": self = .default
//        case "qu_PE": self = .default
//        case "rhg": self = .default
//        case "rhg_Rohg": self = .default
//        case "rhg_Rohg_BD": self = .default
//        case "rhg_Rohg_MM": self = .default
//        case "rm": self = .default
//        case "rm_CH": self = .default
//        case "rn": self = .default
//        case "rn_BI": self = .default
//        case "ro": self = .default
//        case "ro_MD": self = .default
//        case "ro_RO": self = .default
//        case "rof": self = .default
//        case "rof_TZ": self = .default
//        case "ru": self = .default
//        case "ru_BY": self = .default
//        case "ru_KG": self = .default
//        case "ru_KZ": self = .default
//        case "ru_MD": self = .default
//        case "ru_RU": self = .default
//        case "ru_UA": self = .default
//        case "rw": self = .default
//        case "rw_RW": self = .default
//        case "rwk": self = .default
//        case "rwk_TZ": self = .default
//        case "sa": self = .default
//        case "sa_IN": self = .default
//        case "sah": self = .default
//        case "sah_RU": self = .default
//        case "saq": self = .default
//        case "saq_KE": self = .default
//        case "sat": self = .default
//        case "sat_Deva": self = .default
//        case "sat_Deva_IN": self = .default
//        case "sat_Olck": self = .default
//        case "sat_Olck_IN": self = .default
//        case "sbp": self = .default
//        case "sbp_TZ": self = .default
//        case "sc": self = .default
//        case "sc_IT": self = .default
//        case "scn": self = .default
//        case "scn_IT": self = .default
//        case "sd": self = .default
//        case "sd_Arab": self = .default
//        case "sd_Arab_PK": self = .default
//        case "sd_Deva": self = .default
//        case "sd_Deva_IN": self = .default
//        case "se": self = .default
//        case "se_FI": self = .default
//        case "se_NO": self = .default
//        case "se_SE": self = .default
//        case "seh": self = .default
//        case "seh_MZ": self = .default
//        case "ses": self = .default
//        case "ses_ML": self = .default
//        case "sg": self = .default
//        case "sg_CF": self = .default
//        case "shi": self = .default
//        case "shi_Latn": self = .default
//        case "shi_Latn_MA": self = .default
//        case "shi_Tfng": self = .default
//        case "shi_Tfng_MA": self = .default
//        case "si": self = .default
//        case "si_LK": self = .default
//        case "sk": self = .default
//        case "sk_SK": self = .default
//        case "sl": self = .default
//        case "sl_SI": self = .default
//        case "smn": self = .default
//        case "smn_FI": self = .default
//        case "sn": self = .default
//        case "sn_ZW": self = .default
//        case "so": self = .default
//        case "so_DJ": self = .default
//        case "so_ET": self = .default
//        case "so_KE": self = .default
//        case "so_SO": self = .default
//        case "sq": self = .default
//        case "sq_AL": self = .default
//        case "sq_MK": self = .default
//        case "sq_XK": self = .default
//        case "sr": self = .default
//        case "sr_Cyrl": self = .default
//        case "sr_Cyrl_BA": self = .default
//        case "sr_Cyrl_ME": self = .default
//        case "sr_Cyrl_RS": self = .default
//        case "sr_Cyrl_XK": self = .default
//        case "sr_Latn": self = .default
//        case "sr_Latn_BA": self = .default
//        case "sr_Latn_ME": self = .default
//        case "sr_Latn_RS": self = .default
//        case "sr_Latn_XK": self = .default
//        case "ss": self = .default
//        case "ss_SZ": self = .default
//        case "ss_ZA": self = .default
//        case "st": self = .default
//        case "st_LS": self = .default
//        case "st_ZA": self = .default
//        case "su": self = .default
//        case "su_Latn": self = .default
//        case "su_Latn_ID": self = .default
//        case "sv": self = .default
//        case "sv_AX": self = .default
//        case "sv_FI": self = .default
//        case "sv_SE": self = .default
//        case "sw": self = .default
//        case "sw_CD": self = .default
//        case "sw_KE": self = .default
//        case "sw_TZ": self = .default
//        case "sw_UG": self = .default
//        case "syr": self = .default
//        case "syr_IQ": self = .default
//        case "syr_SY": self = .default
//        case "ta": self = .default
//        case "ta_IN": self = .default
//        case "ta_LK": self = .default
//        case "ta_MY": self = .default
//        case "ta_SG": self = .default
//        case "te": self = .default
//        case "te_IN": self = .default
//        case "teo": self = .default
//        case "teo_KE": self = .default
//        case "teo_UG": self = .default
//        case "tg": self = .default
//        case "tg_TJ": self = .default
//        case "th": self = .default
//        case "th_TH": self = .default
//        case "ti": self = .default
//        case "ti_ER": self = .default
//        case "ti_ET": self = .default
//        case "tig": self = .default
//        case "tig_ER": self = .default
//        case "tk": self = .default
//        case "tk_TM": self = .default
//        case "tn": self = .default
//        case "tn_BW": self = .default
//        case "tn_ZA": self = .default
//        case "to": self = .default
//        case "to_TO": self = .default
//        case "tr": self = .default
//        case "tr_CY": self = .default
//        case "tr_TR": self = .default
//        case "trv": self = .default
//        case "trv_TW": self = .default
//        case "ts": self = .default
//        case "ts_ZA": self = .default
//        case "tt": self = .default
//        case "tt_RU": self = .default
//        case "twq": self = .default
//        case "twq_NE": self = .default
//        case "tzm": self = .default
//        case "tzm_MA": self = .default
//        case "ug": self = .default
//        case "ug_CN": self = .default
//        case "uk": self = .default
//        case "uk_UA": self = .default
//        case "ur": self = .default
//        case "ur_Arab": self = .default
//        case "ur_Arab_IN": self = .default
//        case "ur_Arab_PK": self = .default
//        case "ur_Aran_PK": self = .default
//        case "uz": self = .default
//        case "uz_Arab": self = .default
//        case "uz_Arab_AF": self = .default
//        case "uz_Cyrl": self = .default
//        case "uz_Cyrl_UZ": self = .default
//        case "uz_Latn": self = .default
//        case "uz_Latn_UZ": self = .default
//        case "vai": self = .default
//        case "vai_Latn": self = .default
//        case "vai_Latn_LR": self = .default
//        case "vai_Vaii": self = .default
//        case "vai_Vaii_LR": self = .default
//        case "ve": self = .default
//        case "ve_ZA": self = .default
//        case "vi": self = .default
//        case "vi_VN": self = .default
//        case "vun": self = .default
//        case "vun_TZ": self = .default
//        case "wa": self = .default
//        case "wa_BE": self = .default
//        case "wae": self = .default
//        case "wae_CH": self = .default
//        case "wal": self = .default
//        case "wal_ET": self = .default
//        case "wo": self = .default
//        case "wo_SN": self = .default
//        case "xh": self = .default
//        case "xh_ZA": self = .default
//        case "xog": self = .default
//        case "xog_UG": self = .default
//        case "yav": self = .default
//        case "yav_CM": self = .default
//        case "yi": self = .default
//        case "yi_001": self = .default
//        case "yo": self = .default
//        case "yo_BJ": self = .default
//        case "yo_NG": self = .default
//        case "yue": self = .default
//        case "yue_Hans": self = .default
//        case "yue_Hans_CN": self = .default
//        case "yue_Hant": self = .default
//        case "yue_Hant_HK": self = .default
//        case "zgh": self = .default
//        case "zgh_MA": self = .default
//        case "zh": self = .default
//        case "zh_Hans": self = .default
//        case "zh_Hans_CN": self = .default
//        case "zh_Hans_HK": self = .default
//        case "zh_Hans_JP": self = .default
//        case "zh_Hans_MO": self = .default
//        case "zh_Hans_SG": self = .default
//        case "zh_Hant": self = .default
//        case "zh_Hant_CN": self = .default
//        case "zh_Hant_HK": self = .default
//        case "zh_Hant_MO": self = .default
//        case "zh_Hant_TW": self = .default
//        case "zu": self = .default
//        case "zu_ZA": self = .default
//        }
//    }
// }
//
