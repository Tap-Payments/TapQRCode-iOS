//
//  TapAlternateLanguageEnum.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 19/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
///This is a representable and easy representation for the List of ISO 639-1 codes languages code list. To be used in forming the Language Preference (ID "00") in Language Template (ID "64") in EMVCO push payment data
@objc public enum TapAlternateLanguageEnum: Int, RawRepresentable, CaseIterable {
    
    /// Afar Language Code
    case aa
    /// Abkhazian Language Code
    case ab
    /// Afrikaans Language Code
    case af
    /// Amharic Language Code
    case am
    /// Arabic Language Code
    case ar
    /// Assamese Language Code
    case asa
    /// Aymara Language Code
    case ay
    /// Azeri Language Code
    case az
    /// Bashkir Language Code
    case ba
    /// Belarusian Language Code
    case be
    /// Bulgarian Language Code
    case bg
    /// Bihari Language Code
    case bh
    /// Bislama Language Code
    case bi
    /// Bengali Language Code
    case bn
    /// Tibetan Language Code
    case bo
    /// Breton Language Code
    case br
    /// Catalan Language Code
    case ca
    /// Corsican Language Code
    case co
    /// Czech Language Code
    case cs
    /// Welsh Language Code
    case cy
    /// Danish Language Code
    case da
    /// German Language Code
    case de
    /// Divehi Language Code
    case div
    /// Bhutani Language Code
    case dz
    /// Greek Language Code
    case el
    /// English Language Code
    case en
    /// Esperanto Language Code
    case eo
    /// Spanish Language Code
    case es
    /// Estonian Language Code
    case et
    /// Basque Language Code
    case eu
    /// Farsi Language Code
    case fa
    /// Finnish Language Code
    case fi
    /// Fiji Language Code
    case fj
    /// Faeroese Language Code
    case fo
    /// French Language Code
    case fr
    /// Frisian Language Code
    case fy
    /// Irish Language Code
    case ga
    /// Gaelic Language Code
    case gd
    /// Galician Language Code
    case gl
    /// Guarani Language Code
    case gn
    /// Gujarati Language Code
    case gu
    /// Hausa Language Code
    case ha
    /// Hebrew Language Code
    case he
    /// Hindi Language Code
    case hi
    /// Croatian Language Code
    case hr
    /// Hungarian Language Code
    case hu
    /// Armenian Language Code
    case hy
    /// Interlingua Language Code
    case ia
    /// Indonesian Language Code
    case id
    /// Interlingue Language Code
    case ie
    /// Inupiak Language Code
    case ik
    /// Indonesian Language Code
    case ind
    /// Icelandic Language Code
    case isc
    /// Italian Language Code
    case it
    /// Hebrew Language Code
    case iw
    /// Japanese Language Code
    case ja
    /// Yiddish Language Code
    case ji
    /// Javanese Language Code
    case jw
    /// Georgian Language Code
    case ka
    /// Kazakh Language Code
    case kk
    /// Greenlandic Language Code
    case kl
    /// Cambodian Language Code
    case km
    /// Kannada Language Code
    case kn
    /// Korean Language Code
    case ko
    /// Konkani Language Code
    case kok
    /// Kashmiri Language Code
    case ks
    /// Kurdish Language Code
    case ku
    /// Kirghiz Language Code
    case ky
    /// Kyrgyz Language Code
    case kz
    /// Latin Language Code
    case la
    /// Lingala Language Code
    case ln
    /// Laothian Language Code
    case lo
    /// Slovenian Language Code
    case ls
    /// Lithuanian Language Code
    case lt
    /// Latvian Language Code
    case lv
    /// Malagasy Language Code
    case mg
    /// Maori Language Code
    case mi
    /// FYROMacedonian Language Code
    case mk
    /// Malayalam Language Code
    case ml
    /// Mongolian Language Code
    case mn
    /// Moldavian Language Code
    case mo
    /// Marathi Language Code
    case mr
    /// Malay Language Code
    case ms
    /// Maltese Language Code
    case mt
    /// Burmese Language Code
    case my
    /// Nauru Language Code
    case na
    /// NepaliIndia Language Code
    case ne
    /// Dutch Language Code
    case nl
    /// NorwegianBokmal Language Code
    case no
    /// Occitan Language Code
    case oc
    /// AfanOromoorOriya Language Code
    case om
    /// Oriya Language Code
    case or
    /// Punjabi Language Code
    case pa
    /// Polish Language Code
    case pl
    /// PashtoPushto Language Code
    case ps
    /// Portuguese Language Code
    case pt
    /// Quechua Language Code
    case qu
    /// RhaetoRomanic Language Code
    case rm
    /// Kirundi Language Code
    case rn
    /// Romanian Language Code
    case ro
    /// Russian Language Code
    case ru
    /// Kinyarwanda Language Code
    case rw
    /// Sanskrit Language Code
    case sa
    /// Sorbian Language Code
    case sb
    /// Sindhi Language Code
    case sd
    /// Sangro Language Code
    case sg
    /// SerboCroatian Language Code
    case sh
    /// Singhalese Language Code
    case si
    /// Slovak Language Code
    case sk
    /// Slovenian Language Code
    case sl
    /// Samoan Language Code
    case sm
    /// Shona Language Code
    case sn
    /// Somali Language Code
    case so
    /// Albanian Language Code
    case sq
    /// Serbian Language Code
    case sr
    /// Siswati Language Code
    case ss
    /// Sesotho Language Code
    case st
    /// Sundanese Language Code
    case su
    /// Swedish Language Code
    case sv
    /// Swahili Language Code
    case sw
    /// Sutu Language Code
    case sx
    /// Syriac Language Code
    case syr
    /// Tamil Language Code
    case ta
    /// Telugu Language Code
    case te
    /// Tajik Language Code
    case tg
    /// Thai Language Code
    case th
    /// Tigrinya Language Code
    case ti
    /// Turkmen Language Code
    case tk
    /// Tagalog Language Code
    case tl
    /// Tswana Language Code
    case tn
    /// Tonga Language Code
    case to
    /// Turkish Language Code
    case tr
    /// Tsonga Language Code
    case ts
    /// Tatar Language Code
    case tt
    /// Twi Language Code
    case tw
    /// Ukrainian Language Code
    case uk
    /// Urdu Language Code
    case ur
    /// English Language Code
    case us
    /// Uzbek Language Code
    case uz
    /// Vietnamese Language Code
    case vi
    /// Volapuk Language Code
    case vo
    /// Wolof Language Code
    case wo
    /// Xhosa Language Code
    case xh
    /// Yiddish Language Code
    case yi
    /// Yoruba Language Code
    case yo
    /// Chinese Language Code
    case zh
    /// Zulu Language Code
    case zu
    
    public typealias RawValue = String

    public var rawValue: RawValue {
        switch self {
            case .aa:
                return"aa"
            case .ab:
                return"ab"
            case .af:
                return"af"
            case .am:
                return"am"
            case .ar:
                return"ar"
            case .asa:
                return"as"
            case .ay:
                return"ay"
            case .az:
                return"az"
            case .ba:
                return"ba"
            case .be:
                return"be"
            case .bg:
                return"bg"
            case .bh:
                return"bh"
            case .bi:
                return"bi"
            case .bn:
                return"bn"
            case .bo:
                return"bo"
            case .br:
                return"br"
            case .ca:
                return"ca"
            case .co:
                return"co"
            case .cs:
                return"cs"
            case .cy:
                return"cy"
            case .da:
                return"da"
            case .de:
                return"de"
            case .div:
                return"div"
            case .dz:
                return"dz"
            case .el:
                return"el"
            case .en:
                return"en"
            case .eo:
                return"eo"
            case .es:
                return"es"
            case .et:
                return"et"
            case .eu:
                return"eu"
            case .fa:
                return"fa"
            case .fi:
                return"fi"
            case .fj:
                return"fj"
            case .fo:
                return"fo"
            case .fr:
                return"fr"
            case .fy:
                return"fy"
            case .ga:
                return"ga"
            case .gd:
                return"gd"
            case .gl:
                return"gl"
            case .gn:
                return"gn"
            case .gu:
                return"gu"
            case .ha:
                return"ha"
            case .he:
                return"he"
            case .hi:
                return"hi"
            case .hr:
                return"hr"
            case .hu:
                return"hu"
            case .hy:
                return"hy"
            case .ia:
                return"ia"
            case .id:
                return"id"
            case .ie:
                return"ie"
            case .ik:
                return"ik"
            case .ind:
                return"in"
            case .isc:
                return"is"
            case .it:
                return"it"
            case .iw:
                return"iw"
            case .ja:
                return"ja"
            case .ji:
                return"ji"
            case .jw:
                return"jw"
            case .ka:
                return"ka"
            case .kk:
                return"kk"
            case .kl:
                return"kl"
            case .km:
                return"km"
            case .kn:
                return"kn"
            case .ko:
                return"ko"
            case .kok:
                return"kok"
            case .ks:
                return"ks"
            case .ku:
                return"ku"
            case .ky:
                return"ky"
            case .kz:
                return"kz"
            case .la:
                return"la"
            case .ln:
                return"ln"
            case .lo:
                return"lo"
            case .ls:
                return"ls"
            case .lt:
                return"lt"
            case .lv:
                return"lv"
            case .mg:
                return"mg"
            case .mi:
                return"mi"
            case .mk:
                return"mk"
            case .ml:
                return"ml"
            case .mn:
                return"mn"
            case .mo:
                return"mo"
            case .mr:
                return"mr"
            case .ms:
                return"ms"
            case .mt:
                return"mt"
            case .my:
                return"my"
            case .na:
                return"na"
            case .ne:
                return"ne"
            case .nl:
                return"nl"
            case .no:
                return"no"
            case .oc:
                return"oc"
            case .om:
                return"om"
            case .or:
                return"or"
            case .pa:
                return"pa"
            case .pl:
                return"pl"
            case .ps:
                return"ps"
            case .pt:
                return"pt"
            case .qu:
                return"qu"
            case .rm:
                return"rm"
            case .rn:
                return"rn"
            case .ro:
                return"ro"
            case .ru:
                return"ru"
            case .rw:
                return"rw"
            case .sa:
                return"sa"
            case .sb:
                return"sb"
            case .sd:
                return"sd"
            case .sg:
                return"sg"
            case .sh:
                return"sh"
            case .si:
                return"si"
            case .sk:
                return"sk"
            case .sl:
                return"sl"
            case .sm:
                return"sm"
            case .sn:
                return"sn"
            case .so:
                return"so"
            case .sq:
                return"sq"
            case .sr:
                return"sr"
            case .ss:
                return"ss"
            case .st:
                return"st"
            case .su:
                return"su"
            case .sv:
                return"sv"
            case .sw:
                return"sw"
            case .sx:
                return"sx"
            case .syr:
                return"syr"
            case .ta:
                return"ta"
            case .te:
                return"te"
            case .tg:
                return"tg"
            case .th:
                return"th"
            case .ti:
                return"ti"
            case .tk:
                return"tk"
            case .tl:
                return"tl"
            case .tn:
                return"tn"
            case .to:
                return"to"
            case .tr:
                return"tr"
            case .ts:
                return"ts"
            case .tt:
                return"tt"
            case .tw:
                return"tw"
            case .uk:
                return"uk"
            case .ur:
                return"ur"
            case .us:
                return"us"
            case .uz:
                return"uz"
            case .vi:
                return"vi"
            case .vo:
                return"vo"
            case .wo:
                return"wo"
            case .xh:
                return"xh"
            case .yi:
                return"yi"
            case .yo:
                return"yo"
            case .zh:
                return"zh"
            case .zu:
                return"zu"
        }
    }
    
    /// Coming constcutors to spport creating enums from String in case of parsing it from JSON
    public init?(rawValue: String) {
        switch rawValue.lowercased() {
            case "aa":
                self = .aa
            case "ab":
                self = .ab
            case "af":
                self = .af
            case "am":
                self = .am
            case "ar":
                self = .ar
            case "as":
                self = .asa
            case "ay":
                self = .ay
            case "az":
                self = .az
            case "ba":
                self = .ba
            case "be":
                self = .be
            case "bg":
                self = .bg
            case "bh":
                self = .bh
            case "bi":
                self = .bi
            case "bn":
                self = .bn
            case "bo":
                self = .bo
            case "br":
                self = .br
            case "ca":
                self = .ca
            case "co":
                self = .co
            case "cs":
                self = .cs
            case "cy":
                self = .cy
            case "da":
                self = .da
            case "de":
                self = .de
            case "div":
                self = .div
            case "dz":
                self = .dz
            case "el":
                self = .el
            case "en":
                self = .en
            case "eo":
                self = .eo
            case "es":
                self = .es
            case "et":
                self = .et
            case "eu":
                self = .eu
            case "fa":
                self = .fa
            case "fi":
                self = .fi
            case "fj":
                self = .fj
            case "fo":
                self = .fo
            case "fr":
                self = .fr
            case "fy":
                self = .fy
            case "ga":
                self = .ga
            case "gd":
                self = .gd
            case "gl":
                self = .gl
            case "gn":
                self = .gn
            case "gu":
                self = .gu
            case "ha":
                self = .ha
            case "he":
                self = .he
            case "hi":
                self = .hi
            case "hr":
                self = .hr
            case "hu":
                self = .hu
            case "hy":
                self = .hy
            case "ia":
                self = .ia
            case "id":
                self = .id
            case "ie":
                self = .ie
            case "ik":
                self = .ik
            case "in":
                self = .ind
            case "is":
                self = .isc
            case "it":
                self = .it
            case "iw":
                self = .iw
            case "ja":
                self = .ja
            case "ji":
                self = .ji
            case "jw":
                self = .jw
            case "ka":
                self = .ka
            case "kk":
                self = .kk
            case "kl":
                self = .kl
            case "km":
                self = .km
            case "kn":
                self = .kn
            case "ko":
                self = .ko
            case "kok":
                self = .kok
            case "ks":
                self = .ks
            case "ku":
                self = .ku
            case "ky":
                self = .ky
            case "kz":
                self = .kz
            case "la":
                self = .la
            case "ln":
                self = .ln
            case "lo":
                self = .lo
            case "ls":
                self = .ls
            case "lt":
                self = .lt
            case "lv":
                self = .lv
            case "mg":
                self = .mg
            case "mi":
                self = .mi
            case "mk":
                self = .mk
            case "ml":
                self = .ml
            case "mn":
                self = .mn
            case "mo":
                self = .mo
            case "mr":
                self = .mr
            case "ms":
                self = .ms
            case "mt":
                self = .mt
            case "my":
                self = .my
            case "na":
                self = .na
            case "ne":
                self = .ne
            case "nl":
                self = .nl
            case "no":
                self = .no
            case "oc":
                self = .oc
            case "om":
                self = .om
            case "or":
                self = .or
            case "pa":
                self = .pa
            case "pl":
                self = .pl
            case "ps":
                self = .ps
            case "pt":
                self = .pt
            case "qu":
                self = .qu
            case "rm":
                self = .rm
            case "rn":
                self = .rn
            case "ro":
                self = .ro
            case "ru":
                self = .ru
            case "rw":
                self = .rw
            case "sa":
                self = .sa
            case "sb":
                self = .sb
            case "sd":
                self = .sd
            case "sg":
                self = .sg
            case "sh":
                self = .sh
            case "si":
                self = .si
            case "sk":
                self = .sk
            case "sl":
                self = .sl
            case "sm":
                self = .sm
            case "sn":
                self = .sn
            case "so":
                self = .so
            case "sq":
                self = .sq
            case "sr":
                self = .sr
            case "ss":
                self = .ss
            case "st":
                self = .st
            case "su":
                self = .su
            case "sv":
                self = .sv
            case "sw":
                self = .sw
            case "sx":
                self = .sx
            case "syr":
                self = .syr
            case "ta":
                self = .ta
            case "te":
                self = .te
            case "tg":
                self = .tg
            case "th":
                self = .th
            case "ti":
                self = .ti
            case "tk":
                self = .tk
            case "tl":
                self = .tl
            case "tn":
                self = .tn
            case "to":
                self = .to
            case "tr":
                self = .tr
            case "ts":
                self = .ts
            case "tt":
                self = .tt
            case "tw":
                self = .tw
            case "uk":
                self = .uk
            case "ur":
                self = .ur
            case "us":
                self = .us
            case "uz":
                self = .uz
            case "vi":
                self = .vi
            case "vo":
                self = .vo
            case "wo":
                self = .wo
            case "xh":
                self = .xh
            case "yi":
                self = .yi
            case "yo":
                self = .yo
            case "zh":
                self = .zh
            case "zu":
                self = .zu
            default:
                return nil
        }
    }
    
    
    
}
