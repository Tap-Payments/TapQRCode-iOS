//
//  TapEmvcoCurrencyCode.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 16/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
///This is a representable and easy representation for the ISO 4217 currency code list. To be used in forming the Transaction Currency (ID "53") in EMVCO push payment data
@objc public enum TapEmvcoCurrencyCode: Int, RawRepresentable, CaseIterable {
    
    case AED
    case AFN
    case ALL
    case AMD
    case ANG
    case AOA
    case ARS
    case AUD
    case AWG
    case AZN
    case BAM
    case BBD
    case BDT
    case BGN
    case BHD
    case BMD
    case BND
    case BOB
    case BOV
    case BRL
    case BSD
    case BTN
    case BWP
    case BYN
    case BZD
    case CAD
    case CDF
    case CHE
    case CHF
    case CHW
    case CLF
    case CNY
    case COP
    case CRC
    case CUC
    case CUP
    case CVE
    case CZK
    case DKK
    case DOP
    case DZD
    case EGP
    case ERN
    case ETB
    case EUR
    case FJD
    case FKP
    case GBP
    case GEL
    case GHS
    case GIP
    case GMD
    case GTQ
    case GYD
    case HKD
    case HNL
    case HRK
    case HTG
    case HUF
    case IDR
    case ILS
    case INR
    case IQD
    case IRR
    case JMD
    case JOD
    case KES
    case KGS
    case KHR
    case KPW
    case KWD
    case KYD
    case KZT
    case LAK
    case LBP
    case LKR
    case LRD
    case LSL
    case LYD
    case MAD
    case MDL
    case MKD
    case MMK
    case MNT
    case MOP
    case MUR
    case MVR
    case MWK
    case MXN
    case MXV
    case MYR
    case MZN
    case NAD
    case NGN
    case NIO
    case NOK
    case NPR
    case NZD
    case OMR
    case PAB
    case PEN
    case PGK
    case PHP
    case PKR
    case PLN
    case QAR
    case RON
    case RSD
    case RUB
    case SAR
    case SBD
    case SCR
    case SDG
    case SEK
    case SGD
    case SHP
    case SLL
    case SOS
    case SRD
    case SSP
    case SVC
    case SYP
    case SZL
    case THB
    case TJS
    case TMT
    case TND
    case TOP
    case TRY
    case TTD
    case TWD
    case TZS
    case UAH
    case USD
    case USN
    case UYU
    case UYW
    case UZS
    case VES
    case WST
    case XCD
    case YER
    case ZAR
    case ZMW
    case ZWL

    public typealias RawValue = String

    public var rawValue: RawValue {
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
        }
    }
    
    public init?(rawValue: RawValue) {
        switch rawValue.lowercased() {
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
