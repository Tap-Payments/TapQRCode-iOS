//
//  TapCurrencyCode.swift
//  TapCommonDataModelsKits
//
//  Created by Osama Rabie on 12/04/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
///This is a representable and easy representation currency codes
@objc public enum TapCurrencyCode: Int, RawRepresentable, CaseIterable {
    
    /// United Arab Emirates dirham currency code
        case AED
        /// Afghan afghani currency code
        case AFN
        /// Albanian lek currency code
        case ALL
        /// Armenian dram currency code
        case AMD
        /// Netherlands Antillean guilder currency code
        case ANG
        /// Angolan kwanza currency code
        case AOA
        /// Argentine peso currency code
        case ARS
        /// Australian dollar currency code
        case AUD
        /// Aruban florin currency code
        case AWG
        /// Azerbaijani manat currency code
        case AZN
        /// Bosnia and Herzegovina convertible mark currency code
        case BAM
        /// Barbados dollar currency code
        case BBD
        /// Bangladeshi taka currency code
        case BDT
        /// Bulgarian lev currency code
        case BGN
        /// Bahraini dinar currency code
        case BHD
        /// Burundian franc currency code
        case BIF
        /// Bermudian dollar currency code
        case BMD
        /// Brunei dollar currency code
        case BND
        /// Boliviano currency code
        case BOB
        /// Bolivian Mvdol (funds code) currency code
        case BOV
        /// Brazilian real currency code
        case BRL
        /// Bahamian dollar currency code
        case BSD
        /// Bhutanese ngultrum currency code
        case BTN
        /// Botswana pula currency code
        case BWP
        /// Belarusian ruble currency code
        case BYN
        /// Belize dollar currency code
        case BZD
        /// Canadian dollar currency code
        case CAD
        /// Congolese franc currency code
        case CDF
        /// WIR Euro (complementary currency) currency code
        case CHE
        /// Swiss franc currency code
        case CHF
        /// WIR Franc (complementary currency) currency code
        case CHW
        /// Unidad de Fomento (funds code) currency code
        case CLF
        /// Chilean peso currency code
        case CLP
        /// Renminbi (Chinese) yuan[7] currency code
        case CNY
        /// Colombian peso currency code
        case COP
        /// Unidad de Valor Real (UVR) (funds code)[8] currency code
        case COU
        /// Costa Rican colon currency code
        case CRC
        /// Cuban convertible peso currency code
        case CUC
        /// Cuban peso currency code
        case CUP
        /// Cape Verdean escudo currency code
        case CVE
        /// Czech koruna currency code
        case CZK
        /// Djiboutian franc currency code
        case DJF
        /// Danish krone currency code
        case DKK
        /// Dominican peso currency code
        case DOP
        /// Algerian dinar currency code
        case DZD
        /// Egyptian pound currency code
        case EGP
        /// Eritrean nakfa currency code
        case ERN
        /// Ethiopian birr currency code
        case ETB
        /// Euro currency code
        case EUR
        /// Fiji dollar currency code
        case FJD
        /// Falkland Islands pound currency code
        case FKP
        /// Pound sterling currency code
        case GBP
        /// Georgian lari currency code
        case GEL
        /// Ghanaian cedi currency code
        case GHS
        /// Gibraltar pound currency code
        case GIP
        /// Gambian dalasi currency code
        case GMD
        /// Guinean franc currency code
        case GNF
        /// Guatemalan quetzal currency code
        case GTQ
        /// Guyanese dollar currency code
        case GYD
        /// Hong Kong dollar currency code
        case HKD
        /// Honduran lempira currency code
        case HNL
        /// Croatian kuna currency code
        case HRK
        /// Haitian gourde currency code
        case HTG
        /// Hungarian forint currency code
        case HUF
        /// Indonesian rupiah currency code
        case IDR
        /// Israeli new shekel currency code
        case ILS
        /// Indian rupee currency code
        case INR
        /// Iraqi dinar currency code
        case IQD
        /// Iranian rial currency code
        case IRR
        /// Icelandic króna currency code
        case ISK
        /// Jamaican dollar currency code
        case JMD
        /// Jordanian dinar currency code
        case JOD
        /// Japanese yen currency code
        case JPY
        /// Kenyan shilling currency code
        case KES
        /// Kyrgyzstani som currency code
        case KGS
        /// Cambodian riel currency code
        case KHR
        /// Comoro franc currency code
        case KMF
        /// North Korean won currency code
        case KPW
        /// South Korean won currency code
        case KRW
        /// Kuwaiti dinar currency code
        case KWD
        /// Cayman Islands dollar currency code
        case KYD
        /// Kazakhstani tenge currency code
        case KZT
        /// Lao kip currency code
        case LAK
        /// Lebanese pound currency code
        case LBP
        /// Sri Lankan rupee currency code
        case LKR
        /// Liberian dollar currency code
        case LRD
        /// Lesotho loti currency code
        case LSL
        /// Libyan dinar currency code
        case LYD
        /// Moroccan dirham currency code
        case MAD
        /// Moldovan leu currency code
        case MDL
        /// Malagasy ariary currency code
        case MGA
        /// Macedonian denar currency code
        case MKD
        /// Myanmar kyat currency code
        case MMK
        /// Mongolian tögrög currency code
        case MNT
        /// Macanese pataca currency code
        case MOP
        /// Mauritian rupee currency code
        case MUR
        /// Maldivian rufiyaa currency code
        case MVR
        /// Malawian kwacha currency code
        case MWK
        /// Mexican peso currency code
        case MXN
        /// Mexican Unidad de Inversion (UDI) (funds code) currency code
        case MXV
        /// Malaysian ringgit currency code
        case MYR
        /// Mozambican metical currency code
        case MZN
        /// Namibian dollar currency code
        case NAD
        /// Nigerian naira currency code
        case NGN
        /// Nicaraguan córdoba currency code
        case NIO
        /// Norwegian krone currency code
        case NOK
        /// Nepalese rupee currency code
        case NPR
        /// New Zealand dollar currency code
        case NZD
        /// Omani rial currency code
        case OMR
        /// Panamanian balboa currency code
        case PAB
        /// Peruvian sol currency code
        case PEN
        /// Papua New Guinean kina currency code
        case PGK
        /// Philippine peso[13] currency code
        case PHP
        /// Pakistani rupee currency code
        case PKR
        /// Polish złoty currency code
        case PLN
        /// Paraguayan guaraní currency code
        case PYG
        /// Qatari riyal currency code
        case QAR
        /// Romanian leu currency code
        case RON
        /// Serbian dinar currency code
        case RSD
        /// Russian ruble currency code
        case RUB
        /// Rwandan franc currency code
        case RWF
        /// Saudi riyal currency code
        case SAR
        /// Solomon Islands dollar currency code
        case SBD
        /// Seychelles rupee currency code
        case SCR
        /// Sudanese pound currency code
        case SDG
        /// Swedish krona/kronor currency code
        case SEK
        /// Singapore dollar currency code
        case SGD
        /// Saint Helena pound currency code
        case SHP
        /// Sierra Leonean leone currency code
        case SLL
        /// Somali shilling currency code
        case SOS
        /// Surinamese dollar currency code
        case SRD
        /// South Sudanese pound currency code
        case SSP
        /// Salvadoran colón currency code
        case SVC
        /// Syrian pound currency code
        case SYP
        /// Swazi lilangeni currency code
        case SZL
        /// Thai baht currency code
        case THB
        /// Tajikistani somoni currency code
        case TJS
        /// Turkmenistan manat currency code
        case TMT
        /// Tunisian dinar currency code
        case TND
        /// Tongan paʻanga currency code
        case TOP
        /// Turkish lira currency code
        case TRY
        /// Trinidad and Tobago dollar currency code
        case TTD
        /// New Taiwan dollar currency code
        case TWD
        /// Tanzanian shilling currency code
        case TZS
        /// Ukrainian hryvnia currency code
        case UAH
        /// Ugandan shilling currency code
        case UGX
        /// United States dollar currency code
        case USD
        /// United States dollar (next day) (funds code) currency code
        case USN
        /// Uruguay Peso en Unidades Indexadas (URUIURUI) (funds code) currency code
        case UYI
        /// Uruguayan peso currency code
        case UYU
        /// Unidad previsional[15] currency code
        case UYW
        /// Uzbekistan som currency code
        case UZS
        /// Venezuelan bolívar soberano[13] currency code
        case VES
        /// Vietnamese đồng currency code
        case VND
        /// Vanuatu vatu currency code
        case VUV
        /// Samoan tala currency code
        case WST
        /// CFA franc BEAC currency code
        case XAF
        /// Silver (one troy ounce) currency code
        case XAG
        /// Gold (one troy ounce) currency code
        case XAU
        /// European Composite Unit (EURCO) (bond market unit) currency code
        case XBA
        /// European Monetary Unit (E.M.U.-6) (bond market unit) currency code
        case XBB
        /// European Unit of Account 9 (E.U.A.-9) (bond market unit) currency code
        case XBC
        /// European Unit of Account 17 (E.U.A.-17) (bond market unit) currency code
        case XBD
        /// East Caribbean dollar currency code
        case XCD
        /// Special drawing rights currency code
        case XDR
        /// CFA franc BCEAO currency code
        case XOF
        /// Palladium (one troy ounce) currency code
        case XPD
        /// CFP franc (franc Pacifique) currency code
        case XPF
        /// Platinum (one troy ounce) currency code
        case XPT
        /// SUCRE currency code
        case XSU
        /// Code reserved for testing currency code
        case XTS
        /// ADB Unit of Account currency code
        case XUA
        /// No currency currency code
        case XXX
        /// Yemeni rial currency code
        case YER
        /// South African rand currency code
        case ZAR
        /// Zambian kwacha currency code
        case ZMW
        /// Zimbabwean dollar currency code
        case ZWL

    public typealias EmvcoRawValue = String

    public var emvcoRawValue: EmvcoRawValue {
        switch self {
           case .AED:
                return"784"
            case .AFN:
                return"971"
            case .ALL:
                return"008"
            case .AMD:
                return"051"
            case .ANG:
                return"532"
            case .AOA:
                return"973"
            case .ARS:
                return"032"
            case .AUD:
                return"036"
            case .AWG:
                return"533"
            case .AZN:
                return"944"
            case .BAM:
                return"977"
            case .BBD:
                return"052"
            case .BDT:
                return"050"
            case .BGN:
                return"975"
            case .BHD:
                return"048"
            case .BMD:
                return"060"
            case .BND:
                return"096"
            case .BOB:
                return"068"
            case .BOV:
                return"984"
            case .BRL:
                return"986"
            case .BSD:
                return"044"
            case .BTN:
                return"064"
            case .BWP:
                return"072"
            case .BYN:
                return"933"
            case .BZD:
                return"084"
            case .CAD:
                return"124"
            case .CDF:
                return"976"
            case .CHE:
                return"947"
            case .CHF:
                return"756"
            case .CHW:
                return"948"
            case .CLF:
                return"990"
            case .CNY:
                return"156"
            case .COP:
                return"170"
            case .CRC:
                return"188"
            case .CUC:
                return"931"
            case .CUP:
                return"192"
            case .CVE:
                return"132"
            case .CZK:
                return"203"
            case .DKK:
                return"208"
            case .DOP:
                return"214"
            case .DZD:
                return"012"
            case .EGP:
                return"818"
            case .ERN:
                return"232"
            case .ETB:
                return"230"
            case .EUR:
                return"978"
            case .FJD:
                return"242"
            case .FKP:
                return"238"
            case .GBP:
                return"826"
            case .GEL:
                return"981"
            case .GHS:
                return"936"
            case .GIP:
                return"292"
            case .GMD:
                return"270"
            case .GTQ:
                return"320"
            case .GYD:
                return"328"
            case .HKD:
                return"344"
            case .HNL:
                return"340"
            case .HRK:
                return"191"
            case .HTG:
                return"332"
            case .HUF:
                return"348"
            case .IDR:
                return"360"
            case .ILS:
                return"376"
            case .INR:
                return"356"
            case .IQD:
                return"368"
            case .IRR:
                return"364"
            case .JMD:
                return"388"
            case .JOD:
                return"400"
            case .KES:
                return"404"
            case .KGS:
                return"417"
            case .KHR:
                return"116"
            case .KPW:
                return"408"
            case .KWD:
                return"414"
            case .KYD:
                return"136"
            case .KZT:
                return"398"
            case .LAK:
                return"418"
            case .LBP:
                return"422"
            case .LKR:
                return"144"
            case .LRD:
                return"430"
            case .LSL:
                return"426"
            case .LYD:
                return"434"
            case .MAD:
                return"504"
            case .MDL:
                return"498"
            case .MKD:
                return"807"
            case .MMK:
                return"104"
            case .MNT:
                return"496"
            case .MOP:
                return"446"
            case .MUR:
                return"480"
            case .MVR:
                return"462"
            case .MWK:
                return"454"
            case .MXN:
                return"484"
            case .MXV:
                return"979"
            case .MYR:
                return"458"
            case .MZN:
                return"943"
            case .NAD:
                return"516"
            case .NGN:
                return"566"
            case .NIO:
                return"558"
            case .NOK:
                return"578"
            case .NPR:
                return"524"
            case .NZD:
                return"554"
            case .OMR:
                return"512"
            case .PAB:
                return"590"
            case .PEN:
                return"604"
            case .PGK:
                return"598"
            case .PHP:
                return"608"
            case .PKR:
                return"586"
            case .PLN:
                return"985"
            case .QAR:
                return"634"
            case .RON:
                return"946"
            case .RSD:
                return"941"
            case .RUB:
                return"643"
            case .SAR:
                return"682"
            case .SBD:
                return"090"
            case .SCR:
                return"690"
            case .SDG:
                return"938"
            case .SEK:
                return"752"
            case .SGD:
                return"702"
            case .SHP:
                return"654"
            case .SLL:
                return"694"
            case .SOS:
                return"706"
            case .SRD:
                return"968"
            case .SSP:
                return"728"
            case .SVC:
                return"222"
            case .SYP:
                return"760"
            case .SZL:
                return"748"
            case .THB:
                return"764"
            case .TJS:
                return"972"
            case .TMT:
                return"934"
            case .TND:
                return"788"
            case .TOP:
                return"776"
            case .TRY:
                return"949"
            case .TTD:
                return"780"
            case .TWD:
                return"901"
            case .TZS:
                return"834"
            case .UAH:
                return"980"
            case .USD:
                return"840"
            case .USN:
                return"997"
            case .UYU:
                return"858"
            case .UYW:
                return"927"
            case .UZS:
                return"860"
            case .VES:
                return"928"
            case .WST:
                return"882"
            case .XCD:
                return"951"
            case .YER:
                return"886"
            case .ZAR:
                return"710"
            case .ZMW:
                return"967"
            case .ZWL:
                return"932"
            default:
                return"840"
        }
    }
    
    public init?(emvcoRawValue: EmvcoRawValue) {
        switch emvcoRawValue.lowercased() {
            case "784":
                self = .AED
            case "971":
                self = .AFN
            case "008":
                self = .ALL
            case "051":
                self = .AMD
            case "532":
                self = .ANG
            case "973":
                self = .AOA
            case "032":
                self = .ARS
            case "036":
                self = .AUD
            case "533":
                self = .AWG
            case "944":
                self = .AZN
            case "977":
                self = .BAM
            case "052":
                self = .BBD
            case "050":
                self = .BDT
            case "975":
                self = .BGN
            case "048":
                self = .BHD
            case "060":
                self = .BMD
            case "096":
                self = .BND
            case "068":
                self = .BOB
            case "984":
                self = .BOV
            case "986":
                self = .BRL
            case "044":
                self = .BSD
            case "064":
                self = .BTN
            case "072":
                self = .BWP
            case "933":
                self = .BYN
            case "084":
                self = .BZD
            case "124":
                self = .CAD
            case "976":
                self = .CDF
            case "947":
                self = .CHE
            case "756":
                self = .CHF
            case "948":
                self = .CHW
            case "990":
                self = .CLF
            case "156":
                self = .CNY
            case "170":
                self = .COP
            case "188":
                self = .CRC
            case "931":
                self = .CUC
            case "192":
                self = .CUP
            case "132":
                self = .CVE
            case "203":
                self = .CZK
            case "208":
                self = .DKK
            case "214":
                self = .DOP
            case "012":
                self = .DZD
            case "818":
                self = .EGP
            case "232":
                self = .ERN
            case "230":
                self = .ETB
            case "978":
                self = .EUR
            case "242":
                self = .FJD
            case "238":
                self = .FKP
            case "826":
                self = .GBP
            case "981":
                self = .GEL
            case "936":
                self = .GHS
            case "292":
                self = .GIP
            case "270":
                self = .GMD
            case "320":
                self = .GTQ
            case "328":
                self = .GYD
            case "344":
                self = .HKD
            case "340":
                self = .HNL
            case "191":
                self = .HRK
            case "332":
                self = .HTG
            case "348":
                self = .HUF
            case "360":
                self = .IDR
            case "376":
                self = .ILS
            case "356":
                self = .INR
            case "368":
                self = .IQD
            case "364":
                self = .IRR
            case "388":
                self = .JMD
            case "400":
                self = .JOD
            case "404":
                self = .KES
            case "417":
                self = .KGS
            case "116":
                self = .KHR
            case "408":
                self = .KPW
            case "414":
                self = .KWD
            case "136":
                self = .KYD
            case "398":
                self = .KZT
            case "418":
                self = .LAK
            case "422":
                self = .LBP
            case "144":
                self = .LKR
            case "430":
                self = .LRD
            case "426":
                self = .LSL
            case "434":
                self = .LYD
            case "504":
                self = .MAD
            case "498":
                self = .MDL
            case "807":
                self = .MKD
            case "104":
                self = .MMK
            case "496":
                self = .MNT
            case "446":
                self = .MOP
            case "480":
                self = .MUR
            case "462":
                self = .MVR
            case "454":
                self = .MWK
            case "484":
                self = .MXN
            case "979":
                self = .MXV
            case "458":
                self = .MYR
            case "943":
                self = .MZN
            case "516":
                self = .NAD
            case "566":
                self = .NGN
            case "558":
                self = .NIO
            case "578":
                self = .NOK
            case "524":
                self = .NPR
            case "554":
                self = .NZD
            case "512":
                self = .OMR
            case "590":
                self = .PAB
            case "604":
                self = .PEN
            case "598":
                self = .PGK
            case "608":
                self = .PHP
            case "586":
                self = .PKR
            case "985":
                self = .PLN
            case "634":
                self = .QAR
            case "946":
                self = .RON
            case "941":
                self = .RSD
            case "643":
                self = .RUB
            case "682":
                self = .SAR
            case "090":
                self = .SBD
            case "690":
                self = .SCR
            case "938":
                self = .SDG
            case "752":
                self = .SEK
            case "702":
                self = .SGD
            case "654":
                self = .SHP
            case "694":
                self = .SLL
            case "706":
                self = .SOS
            case "968":
                self = .SRD
            case "728":
                self = .SSP
            case "222":
                self = .SVC
            case "760":
                self = .SYP
            case "748":
                self = .SZL
            case "764":
                self = .THB
            case "972":
                self = .TJS
            case "934":
                self = .TMT
            case "788":
                self = .TND
            case "776":
                self = .TOP
            case "949":
                self = .TRY
            case "780":
                self = .TTD
            case "901":
                self = .TWD
            case "834":
                self = .TZS
            case "980":
                self = .UAH
            case "840":
                self = .USD
            case "997":
                self = .USN
            case "858":
                self = .UYU
            case "927":
                self = .UYW
            case "860":
                self = .UZS
            case "928":
                self = .VES
            case "882":
                self = .WST
            case "951":
                self = .XCD
            case "886":
                self = .YER
            case "710":
                self = .ZAR
            case "967":
                self = .ZMW
            case "932":
                self = .ZWL
            default:
                return nil
        }
    }
    
    
    public typealias AppleRawValue = String
    
    public var appleRawValue: AppleRawValue {
        switch self {
        case .AED:
            return "AED"
        case .AFN:
            return "AFN"
        case .ALL:
            return "ALL"
        case .AMD:
            return "AMD"
        case .ANG:
            return "ANG"
        case .AOA:
            return "AOA"
        case .ARS:
            return "ARS"
        case .AUD:
            return "AUD"
        case .AWG:
            return "AWG"
        case .AZN:
            return "AZN"
        case .BAM:
            return "BAM"
        case .BBD:
            return "BBD"
        case .BDT:
            return "BDT"
        case .BGN:
            return "BGN"
        case .BHD:
            return "BHD"
        case .BIF:
            return "BIF"
        case .BMD:
            return "BMD"
        case .BND:
            return "BND"
        case .BOB:
            return "BOB"
        case .BOV:
            return "BOV"
        case .BRL:
            return "BRL"
        case .BSD:
            return "BSD"
        case .BTN:
            return "BTN"
        case .BWP:
            return "BWP"
        case .BYN:
            return "BYN"
        case .BZD:
            return "BZD"
        case .CAD:
            return "CAD"
        case .CDF:
            return "CDF"
        case .CHE:
            return "CHE"
        case .CHF:
            return "CHF"
        case .CHW:
            return "CHW"
        case .CLF:
            return "CLF"
        case .CLP:
            return "CLP"
        case .CNY:
            return "CNY"
        case .COP:
            return "COP"
        case .COU:
            return "COU"
        case .CRC:
            return "CRC"
        case .CUC:
            return "CUC"
        case .CUP:
            return "CUP"
        case .CVE:
            return "CVE"
        case .CZK:
            return "CZK"
        case .DJF:
            return "DJF"
        case .DKK:
            return "DKK"
        case .DOP:
            return "DOP"
        case .DZD:
            return "DZD"
        case .EGP:
            return "EGP"
        case .ERN:
            return "ERN"
        case .ETB:
            return "ETB"
        case .EUR:
            return "EUR"
        case .FJD:
            return "FJD"
        case .FKP:
            return "FKP"
        case .GBP:
            return "GBP"
        case .GEL:
            return "GEL"
        case .GHS:
            return "GHS"
        case .GIP:
            return "GIP"
        case .GMD:
            return "GMD"
        case .GNF:
            return "GNF"
        case .GTQ:
            return "GTQ"
        case .GYD:
            return "GYD"
        case .HKD:
            return "HKD"
        case .HNL:
            return "HNL"
        case .HRK:
            return "HRK"
        case .HTG:
            return "HTG"
        case .HUF:
            return "HUF"
        case .IDR:
            return "IDR"
        case .ILS:
            return "ILS"
        case .INR:
            return "INR"
        case .IQD:
            return "IQD"
        case .IRR:
            return "IRR"
        case .ISK:
            return "ISK"
        case .JMD:
            return "JMD"
        case .JOD:
            return "JOD"
        case .JPY:
            return "JPY"
        case .KES:
            return "KES"
        case .KGS:
            return "KGS"
        case .KHR:
            return "KHR"
        case .KMF:
            return "KMF"
        case .KPW:
            return "KPW"
        case .KRW:
            return "KRW"
        case .KWD:
            return "KWD"
        case .KYD:
            return "KYD"
        case .KZT:
            return "KZT"
        case .LAK:
            return "LAK"
        case .LBP:
            return "LBP"
        case .LKR:
            return "LKR"
        case .LRD:
            return "LRD"
        case .LSL:
            return "LSL"
        case .LYD:
            return "LYD"
        case .MAD:
            return "MAD"
        case .MDL:
            return "MDL"
        case .MGA:
            return "MGA"
        case .MKD:
            return "MKD"
        case .MMK:
            return "MMK"
        case .MNT:
            return "MNT"
        case .MOP:
            return "MOP"
        case .MUR:
            return "MUR"
        case .MVR:
            return "MVR"
        case .MWK:
            return "MWK"
        case .MXN:
            return "MXN"
        case .MXV:
            return "MXV"
        case .MYR:
            return "MYR"
        case .MZN:
            return "MZN"
        case .NAD:
            return "NAD"
        case .NGN:
            return "NGN"
        case .NIO:
            return "NIO"
        case .NOK:
            return "NOK"
        case .NPR:
            return "NPR"
        case .NZD:
            return "NZD"
        case .OMR:
            return "OMR"
        case .PAB:
            return "PAB"
        case .PEN:
            return "PEN"
        case .PGK:
            return "PGK"
        case .PHP:
            return "PHP"
        case .PKR:
            return "PKR"
        case .PLN:
            return "PLN"
        case .PYG:
            return "PYG"
        case .QAR:
            return "QAR"
        case .RON:
            return "RON"
        case .RSD:
            return "RSD"
        case .RUB:
            return "RUB"
        case .RWF:
            return "RWF"
        case .SAR:
            return "SAR"
        case .SBD:
            return "SBD"
        case .SCR:
            return "SCR"
        case .SDG:
            return "SDG"
        case .SEK:
            return "SEK"
        case .SGD:
            return "SGD"
        case .SHP:
            return "SHP"
        case .SLL:
            return "SLL"
        case .SOS:
            return "SOS"
        case .SRD:
            return "SRD"
        case .SSP:
            return "SSP"
        case .SVC:
            return "SVC"
        case .SYP:
            return "SYP"
        case .SZL:
            return "SZL"
        case .THB:
            return "THB"
        case .TJS:
            return "TJS"
        case .TMT:
            return "TMT"
        case .TND:
            return "TND"
        case .TOP:
            return "TOP"
        case .TRY:
            return "TRY"
        case .TTD:
            return "TTD"
        case .TWD:
            return "TWD"
        case .TZS:
            return "TZS"
        case .UAH:
            return "UAH"
        case .UGX:
            return "UGX"
        case .USD:
            return "USD"
        case .USN:
            return "USN"
        case .UYI:
            return "UYI"
        case .UYU:
            return "UYU"
        case .UYW:
            return "UYW"
        case .UZS:
            return "UZS"
        case .VES:
            return "VES"
        case .VND:
            return "VND"
        case .VUV:
            return "VUV"
        case .WST:
            return "WST"
        case .XAF:
            return "XAF"
        case .XAG:
            return "XAG"
        case .XAU:
            return "XAU"
        case .XBA:
            return "XBA"
        case .XBB:
            return "XBB"
        case .XBC:
            return "XBC"
        case .XBD:
            return "XBD"
        case .XCD:
            return "XCD"
        case .XDR:
            return "XDR"
        case .XOF:
            return "XOF"
        case .XPD:
            return "XPD"
        case .XPF:
            return "XPF"
        case .XPT:
            return "XPT"
        case .XSU:
            return "XSU"
        case .XTS:
            return "XTS"
        case .XUA:
            return "XUA"
        case .XXX:
            return "XXX"
        case .YER:
            return "YER"
        case .ZAR:
            return "ZAR"
        case .ZMW:
            return "ZMW"
        case .ZWL:
            return "ZWL"
        }
    }
    
    public init?(appleRawValue: AppleRawValue) {
        switch appleRawValue.uppercased() {
        case "AED":
            self = .AED
        case "AFN":
            self = .AFN
        case "ALL":
            self = .ALL
        case "AMD":
            self = .AMD
        case "ANG":
            self = .ANG
        case "AOA":
            self = .AOA
        case "ARS":
            self = .ARS
        case "AUD":
            self = .AUD
        case "AWG":
            self = .AWG
        case "AZN":
            self = .AZN
        case "BAM":
            self = .BAM
        case "BBD":
            self = .BBD
        case "BDT":
            self = .BDT
        case "BGN":
            self = .BGN
        case "BHD":
            self = .BHD
        case "BIF":
            self = .BIF
        case "BMD":
            self = .BMD
        case "BND":
            self = .BND
        case "BOB":
            self = .BOB
        case "BOV":
            self = .BOV
        case "BRL":
            self = .BRL
        case "BSD":
            self = .BSD
        case "BTN":
            self = .BTN
        case "BWP":
            self = .BWP
        case "BYN":
            self = .BYN
        case "BZD":
            self = .BZD
        case "CAD":
            self = .CAD
        case "CDF":
            self = .CDF
        case "CHE":
            self = .CHE
        case "CHF":
            self = .CHF
        case "CHW":
            self = .CHW
        case "CLF":
            self = .CLF
        case "CLP":
            self = .CLP
        case "CNY":
            self = .CNY
        case "COP":
            self = .COP
        case "COU":
            self = .COU
        case "CRC":
            self = .CRC
        case "CUC":
            self = .CUC
        case "CUP":
            self = .CUP
        case "CVE":
            self = .CVE
        case "CZK":
            self = .CZK
        case "DJF":
            self = .DJF
        case "DKK":
            self = .DKK
        case "DOP":
            self = .DOP
        case "DZD":
            self = .DZD
        case "EGP":
            self = .EGP
        case "ERN":
            self = .ERN
        case "ETB":
            self = .ETB
        case "EUR":
            self = .EUR
        case "FJD":
            self = .FJD
        case "FKP":
            self = .FKP
        case "GBP":
            self = .GBP
        case "GEL":
            self = .GEL
        case "GHS":
            self = .GHS
        case "GIP":
            self = .GIP
        case "GMD":
            self = .GMD
        case "GNF":
            self = .GNF
        case "GTQ":
            self = .GTQ
        case "GYD":
            self = .GYD
        case "HKD":
            self = .HKD
        case "HNL":
            self = .HNL
        case "HRK":
            self = .HRK
        case "HTG":
            self = .HTG
        case "HUF":
            self = .HUF
        case "IDR":
            self = .IDR
        case "ILS":
            self = .ILS
        case "INR":
            self = .INR
        case "IQD":
            self = .IQD
        case "IRR":
            self = .IRR
        case "ISK":
            self = .ISK
        case "JMD":
            self = .JMD
        case "JOD":
            self = .JOD
        case "JPY":
            self = .JPY
        case "KES":
            self = .KES
        case "KGS":
            self = .KGS
        case "KHR":
            self = .KHR
        case "KMF":
            self = .KMF
        case "KPW":
            self = .KPW
        case "KRW":
            self = .KRW
        case "KWD":
            self = .KWD
        case "KYD":
            self = .KYD
        case "KZT":
            self = .KZT
        case "LAK":
            self = .LAK
        case "LBP":
            self = .LBP
        case "LKR":
            self = .LKR
        case "LRD":
            self = .LRD
        case "LSL":
            self = .LSL
        case "LYD":
            self = .LYD
        case "MAD":
            self = .MAD
        case "MDL":
            self = .MDL
        case "MGA":
            self = .MGA
        case "MKD":
            self = .MKD
        case "MMK":
            self = .MMK
        case "MNT":
            self = .MNT
        case "MOP":
            self = .MOP
        case "MUR":
            self = .MUR
        case "MVR":
            self = .MVR
        case "MWK":
            self = .MWK
        case "MXN":
            self = .MXN
        case "MXV":
            self = .MXV
        case "MYR":
            self = .MYR
        case "MZN":
            self = .MZN
        case "NAD":
            self = .NAD
        case "NGN":
            self = .NGN
        case "NIO":
            self = .NIO
        case "NOK":
            self = .NOK
        case "NPR":
            self = .NPR
        case "NZD":
            self = .NZD
        case "OMR":
            self = .OMR
        case "PAB":
            self = .PAB
        case "PEN":
            self = .PEN
        case "PGK":
            self = .PGK
        case "PHP":
            self = .PHP
        case "PKR":
            self = .PKR
        case "PLN":
            self = .PLN
        case "PYG":
            self = .PYG
        case "QAR":
            self = .QAR
        case "RON":
            self = .RON
        case "RSD":
            self = .RSD
        case "RUB":
            self = .RUB
        case "RWF":
            self = .RWF
        case "SAR":
            self = .SAR
        case "SBD":
            self = .SBD
        case "SCR":
            self = .SCR
        case "SDG":
            self = .SDG
        case "SEK":
            self = .SEK
        case "SGD":
            self = .SGD
        case "SHP":
            self = .SHP
        case "SLL":
            self = .SLL
        case "SOS":
            self = .SOS
        case "SRD":
            self = .SRD
        case "SSP":
            self = .SSP
        case "SVC":
            self = .SVC
        case "SYP":
            self = .SYP
        case "SZL":
            self = .SZL
        case "THB":
            self = .THB
        case "TJS":
            self = .TJS
        case "TMT":
            self = .TMT
        case "TND":
            self = .TND
        case "TOP":
            self = .TOP
        case "TRY":
            self = .TRY
        case "TTD":
            self = .TTD
        case "TWD":
            self = .TWD
        case "TZS":
            self = .TZS
        case "UAH":
            self = .UAH
        case "UGX":
            self = .UGX
        case "USD":
            self = .USD
        case "USN":
            self = .USN
        case "UYI":
            self = .UYI
        case "UYU":
            self = .UYU
        case "UYW":
            self = .UYW
        case "UZS":
            self = .UZS
        case "VES":
            self = .VES
        case "VND":
            self = .VND
        case "VUV":
            self = .VUV
        case "WST":
            self = .WST
        case "XAF":
            self = .XAF
        case "XAG":
            self = .XAG
        case "XAU":
            self = .XAU
        case "XBA":
            self = .XBA
        case "XBB":
            self = .XBB
        case "XBC":
            self = .XBC
        case "XBD":
            self = .XBD
        case "XCD":
            self = .XCD
        case "XDR":
            self = .XDR
        case "XOF":
            self = .XOF
        case "XPD":
            self = .XPD
        case "XPF":
            self = .XPF
        case "XPT":
            self = .XPT
        case "XSU":
            self = .XSU
        case "XTS":
            self = .XTS
        case "XUA":
            self = .XUA
        case "XXX":
            self = .XXX
        case "YER":
            self = .YER
        case "ZAR":
            self = .ZAR
        case "ZMW":
            self = .ZMW
        case "ZWL":
            self = .ZWL
        default:
            return nil
        }
    }
    
    /**
     Computes the formal number of decimal digits for a specific currency
     - Returns: The numnber of official dominator digits as per the ISO 4217 currency codes list
     */
    internal func numberOfDigits()->Int
    {
        switch self {
        case .AED:
            return 2
        case .AFN:
            return 2
        case .ALL:
            return 2
        case .AMD:
            return 2
        case .ANG:
            return 2
        case .AOA:
            return 2
        case .ARS:
            return 2
        case .AUD:
            return 2
        case .AWG:
            return 2
        case .AZN:
            return 2
        case .BAM:
            return 2
        case .BBD:
            return 2
        case .BDT:
            return 2
        case .BGN:
            return 2
        case .BHD:
            return 3
        case .BMD:
            return 2
        case .BND:
            return 2
        case .BOB:
            return 2
        case .BOV:
            return 2
        case .BRL:
            return 2
        case .BSD:
            return 2
        case .BTN:
            return 2
        case .BWP:
            return 2
        case .BYN:
            return 2
        case .BZD:
            return 2
        case .CAD:
            return 2
        case .CDF:
            return 2
        case .CHE:
            return 2
        case .CHF:
            return 2
        case .CHW:
            return 2
        case .CLF:
            return 4
        case .CNY:
            return 2
        case .COP:
            return 2
        case .CRC:
            return 2
        case .CUC:
            return 2
        case .CUP:
            return 2
        case .CVE:
            return 2
        case .CZK:
            return 2
        case .DKK:
            return 2
        case .DOP:
            return 2
        case .DZD:
            return 2
        case .EGP:
            return 2
        case .ERN:
            return 2
        case .ETB:
            return 2
        case .EUR:
            return 2
        case .FJD:
            return 2
        case .FKP:
            return 2
        case .GBP:
            return 2
        case .GEL:
            return 2
        case .GHS:
            return 2
        case .GIP:
            return 2
        case .GMD:
            return 2
        case .GTQ:
            return 2
        case .GYD:
            return 2
        case .HKD:
            return 2
        case .HNL:
            return 2
        case .HRK:
            return 2
        case .HTG:
            return 2
        case .HUF:
            return 2
        case .IDR:
            return 2
        case .ILS:
            return 2
        case .INR:
            return 2
        case .IQD:
            return 3
        case .IRR:
            return 2
        case .JMD:
            return 2
        case .JOD:
            return 3
        case .KES:
            return 2
        case .KGS:
            return 2
        case .KHR:
            return 2
        case .KPW:
            return 2
        case .KWD:
            return 3
        case .KYD:
            return 2
        case .KZT:
            return 2
        case .LAK:
            return 2
        case .LBP:
            return 2
        case .LKR:
            return 2
        case .LRD:
            return 2
        case .LSL:
            return 2
        case .LYD:
            return 3
        case .MAD:
            return 2
        case .MDL:
            return 2
        case .MKD:
            return 2
        case .MMK:
            return 2
        case .MNT:
            return 2
        case .MOP:
            return 2
        case .MUR:
            return 2
        case .MVR:
            return 2
        case .MWK:
            return 2
        case .MXN:
            return 2
        case .MXV:
            return 2
        case .MYR:
            return 2
        case .MZN:
            return 2
        case .NAD:
            return 2
        case .NGN:
            return 2
        case .NIO:
            return 2
        case .NOK:
            return 2
        case .NPR:
            return 2
        case .NZD:
            return 2
        case .OMR:
            return 3
        case .PAB:
            return 2
        case .PEN:
            return 2
        case .PGK:
            return 2
        case .PHP:
            return 2
        case .PKR:
            return 2
        case .PLN:
            return 2
        case .QAR:
            return 2
        case .RON:
            return 2
        case .RSD:
            return 2
        case .RUB:
            return 2
        case .SAR:
            return 2
        case .SBD:
            return 2
        case .SCR:
            return 2
        case .SDG:
            return 2
        case .SEK:
            return 2
        case .SGD:
            return 2
        case .SHP:
            return 2
        case .SLL:
            return 2
        case .SOS:
            return 2
        case .SRD:
            return 2
        case .SSP:
            return 2
        case .SVC:
            return 2
        case .SYP:
            return 2
        case .SZL:
            return 2
        case .THB:
            return 2
        case .TJS:
            return 2
        case .TMT:
            return 2
        case .TND:
            return 3
        case .TOP:
            return 2
        case .TRY:
            return 2
        case .TTD:
            return 2
        case .TWD:
            return 2
        case .TZS:
            return 2
        case .UAH:
            return 2
        case .USD:
            return 2
        case .USN:
            return 2
        case .UYU:
            return 2
        case .UYW:
            return 4
        case .UZS:
            return 2
        case .VES:
            return 2
        case .WST:
            return 2
        case .XCD:
            return 2
        case .YER:
            return 2
        case .ZAR:
            return 2
        case .ZMW:
            return 2
        case .ZWL:
            return 2
        default:
            return 2
        }
    }
}
