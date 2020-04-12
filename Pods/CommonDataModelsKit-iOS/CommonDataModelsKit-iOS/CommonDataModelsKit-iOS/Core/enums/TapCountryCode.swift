//
//  TapCountryCode.swift
//  TapCommonDataModelsKits
//
//  Created by Osama Rabie on 12/04/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
///The Country Code shall contain a value as defined
@objc public enum TapCountryCode: Int, RawRepresentable, CaseIterable {
   
    /// Andorra Country Code
        case AD
        /// United Arab Emirates Country Code
        case AE
        /// Afghanistan Country Code
        case AF
        /// Antigua and Barbuda Country Code
        case AG
        /// Anguilla Country Code
        case AI
        /// Albania Country Code
        case AL
        /// Armenia Country Code
        case AM
        /// Angola Country Code
        case AO
        /// Antarctica Country Code
        case AQ
        /// Argentina Country Code
        case AR
        /// American Samoa Country Code
        case AS
        /// Austria Country Code
        case AT
        /// Australia Country Code
        case AU
        /// Aruba Country Code
        case AW
        /// Åland Islands Country Code
        case AX
        /// Azerbaijan Country Code
        case AZ
        /// Bosnia and Herzegovina Country Code
        case BA
        /// Barbados Country Code
        case BB
        /// Bangladesh Country Code
        case BD
        /// Belgium Country Code
        case BE
        /// Burkina Faso Country Code
        case BF
        /// Bulgaria Country Code
        case BG
        /// Bahrain Country Code
        case BH
        /// Burundi Country Code
        case BI
        /// Benin Country Code
        case BJ
        /// Saint Barthélemy Country Code
        case BL
        /// Bermuda Country Code
        case BM
        /// Brunei Darussalam Country Code
        case BN
        /// Bolivia (Plurinational State of) Country Code
        case BO
        /// Bonaire, Sint Eustatius and Saba Country Code
        case BQ
        /// Brazil Country Code
        case BR
        /// Bahamas Country Code
        case BS
        /// Bhutan Country Code
        case BT
        /// Bouvet Island Country Code
        case BV
        /// Botswana Country Code
        case BW
        /// Belarus Country Code
        case BY
        /// Belize Country Code
        case BZ
        /// Canada Country Code
        case CA
        /// Cocos (Keeling) Islands Country Code
        case CC
        /// Congo, Democratic Republic of the Country Code
        case CD
        /// Central African Republic Country Code
        case CF
        /// Congo Country Code
        case CG
        /// Switzerland Country Code
        case CH
        /// Côte d'Ivoire Country Code
        case CI
        /// Cook Islands Country Code
        case CK
        /// Chile Country Code
        case CL
        /// Cameroon Country Code
        case CM
        /// China Country Code
        case CN
        /// Colombia Country Code
        case CO
        /// Costa Rica Country Code
        case CR
        /// Cuba Country Code
        case CU
        /// Cabo Verde Country Code
        case CV
        /// Curaçao Country Code
        case CW
        /// Christmas Island Country Code
        case CX
        /// Cyprus Country Code
        case CY
        /// Czechia Country Code
        case CZ
        /// Germany Country Code
        case DE
        /// Djibouti Country Code
        case DJ
        /// Denmark Country Code
        case DK
        /// Dominica Country Code
        case DM
        /// Dominican Republic Country Code
        case DO
        /// Algeria Country Code
        case DZ
        /// Ecuador Country Code
        case EC
        /// Estonia Country Code
        case EE
        /// Egypt Country Code
        case EG
        /// Western Sahara Country Code
        case EH
        /// Eritrea Country Code
        case ER
        /// Spain Country Code
        case ES
        /// Ethiopia Country Code
        case ET
        /// Finland Country Code
        case FI
        /// Fiji Country Code
        case FJ
        /// Falkland Islands (Malvinas) Country Code
        case FK
        /// Micronesia (Federated States of) Country Code
        case FM
        /// Faroe Islands Country Code
        case FO
        /// France Country Code
        case FR
        /// Gabon Country Code
        case GA
        /// United Kingdom of Great Britain and Northern Ireland Country Code
        case GB
        /// Grenada Country Code
        case GD
        /// Georgia Country Code
        case GE
        /// French Guiana Country Code
        case GF
        /// Guernsey Country Code
        case GG
        /// Ghana Country Code
        case GH
        /// Gibraltar Country Code
        case GI
        /// Greenland Country Code
        case GL
        /// Gambia Country Code
        case GM
        /// Guinea Country Code
        case GN
        /// Guadeloupe Country Code
        case GP
        /// Equatorial Guinea Country Code
        case GQ
        /// Greece Country Code
        case GR
        /// South Georgia and the South Sandwich Islands Country Code
        case GS
        /// Guatemala Country Code
        case GT
        /// Guam Country Code
        case GU
        /// Guinea-Bissau Country Code
        case GW
        /// Guyana Country Code
        case GY
        /// Hong Kong Country Code
        case HK
        /// Heard Island and McDonald Islands Country Code
        case HM
        /// Honduras Country Code
        case HN
        /// Croatia Country Code
        case HR
        /// Haiti Country Code
        case HT
        /// Hungary Country Code
        case HU
        /// Indonesia Country Code
        case ID
        /// Ireland Country Code
        case IE
        /// Israel Country Code
        case IL
        /// Isle of Man Country Code
        case IM
        /// India Country Code
        case IN
        /// British Indian Ocean Territory Country Code
        case IO
        /// Iraq Country Code
        case IQ
        /// Iran (Islamic Republic of) Country Code
        case IR
        /// Iceland Country Code
        case IS
        /// Italy Country Code
        case IT
        /// Jersey Country Code
        case JE
        /// Jamaica Country Code
        case JM
        /// Jordan Country Code
        case JO
        /// Japan Country Code
        case JP
        /// Kenya Country Code
        case KE
        /// Kyrgyzstan Country Code
        case KG
        /// Cambodia Country Code
        case KH
        /// Kiribati Country Code
        case KI
        /// Comoros Country Code
        case KM
        /// Saint Kitts and Nevis Country Code
        case KN
        /// Korea (Democratic People's Republic of) Country Code
        case KP
        /// Korea, Republic of Country Code
        case KR
        /// Kuwait Country Code
        case KW
        /// Cayman Islands Country Code
        case KY
        /// Kazakhstan Country Code
        case KZ
        /// Lao People's Democratic Republic Country Code
        case LA
        /// Lebanon Country Code
        case LB
        /// Saint Lucia Country Code
        case LC
        /// Liechtenstein Country Code
        case LI
        /// Sri Lanka Country Code
        case LK
        /// Liberia Country Code
        case LR
        /// Lesotho Country Code
        case LS
        /// Lithuania Country Code
        case LT
        /// Luxembourg Country Code
        case LU
        /// Latvia Country Code
        case LV
        /// Libya Country Code
        case LY
        /// Morocco Country Code
        case MA
        /// Monaco Country Code
        case MC
        /// Moldova, Republic of Country Code
        case MD
        /// Montenegro Country Code
        case ME
        /// Saint Martin (French part) Country Code
        case MF
        /// Madagascar Country Code
        case MG
        /// Marshall Islands Country Code
        case MH
        /// North Macedonia Country Code
        case MK
        /// Mali Country Code
        case ML
        /// Myanmar Country Code
        case MM
        /// Mongolia Country Code
        case MN
        /// Macao Country Code
        case MO
        /// Northern Mariana Islands Country Code
        case MP
        /// Martinique Country Code
        case MQ
        /// Mauritania Country Code
        case MR
        /// Montserrat Country Code
        case MS
        /// Malta Country Code
        case MT
        /// Mauritius Country Code
        case MU
        /// Maldives Country Code
        case MV
        /// Malawi Country Code
        case MW
        /// Mexico Country Code
        case MX
        /// Malaysia Country Code
        case MY
        /// Mozambique Country Code
        case MZ
        /// Namibia Country Code
        case NA
        /// New Caledonia Country Code
        case NC
        /// Niger Country Code
        case NE
        /// Norfolk Island Country Code
        case NF
        /// Nigeria Country Code
        case NG
        /// Nicaragua Country Code
        case NI
        /// Netherlands Country Code
        case NL
        /// Norway Country Code
        case NO
        /// Nepal Country Code
        case NP
        /// Nauru Country Code
        case NR
        /// Niue Country Code
        case NU
        /// New Zealand Country Code
        case NZ
        /// Oman Country Code
        case OM
        /// Panama Country Code
        case PA
        /// Peru Country Code
        case PE
        /// French Polynesia Country Code
        case PF
        /// Papua New Guinea Country Code
        case PG
        /// Philippines Country Code
        case PH
        /// Pakistan Country Code
        case PK
        /// Poland Country Code
        case PL
        /// Saint Pierre and Miquelon Country Code
        case PM
        /// Pitcairn Country Code
        case PN
        /// Puerto Rico Country Code
        case PR
        /// Palestine, State of Country Code
        case PS
        /// Portugal Country Code
        case PT
        /// Palau Country Code
        case PW
        /// Paraguay Country Code
        case PY
        /// Qatar Country Code
        case QA
        /// Réunion Country Code
        case RE
        /// Romania Country Code
        case RO
        /// Serbia Country Code
        case RS
        /// Russian Federation Country Code
        case RU
        /// Rwanda Country Code
        case RW
        /// Saudi Arabia Country Code
        case SA
        /// Solomon Islands Country Code
        case SB
        /// Seychelles Country Code
        case SC
        /// Sudan Country Code
        case SD
        /// Sweden Country Code
        case SE
        /// Singapore Country Code
        case SG
        /// Saint Helena, Ascension and Tristan da Cunha Country Code
        case SH
        /// Slovenia Country Code
        case SI
        /// Svalbard and Jan Mayen Country Code
        case SJ
        /// Slovakia Country Code
        case SK
        /// Sierra Leone Country Code
        case SL
        /// San Marino Country Code
        case SM
        /// Senegal Country Code
        case SN
        /// Somalia Country Code
        case SO
        /// Suriname Country Code
        case SR
        /// South Sudan Country Code
        case SS
        /// Sao Tome and Principe Country Code
        case ST
        /// El Salvador Country Code
        case SV
        /// Sint Maarten (Dutch part) Country Code
        case SX
        /// Syrian Arab Republic Country Code
        case SY
        /// Eswatini Country Code
        case SZ
        /// Turks and Caicos Islands Country Code
        case TC
        /// Chad Country Code
        case TD
        /// French Southern Territories Country Code
        case TF
        /// Togo Country Code
        case TG
        /// Thailand Country Code
        case TH
        /// Tajikistan Country Code
        case TJ
        /// Tokelau Country Code
        case TK
        /// Timor-Leste Country Code
        case TL
        /// Turkmenistan Country Code
        case TM
        /// Tunisia Country Code
        case TN
        /// Tonga Country Code
        case TO
        /// Turkey Country Code
        case TR
        /// Trinidad and Tobago Country Code
        case TT
        /// Tuvalu Country Code
        case TV
        /// Taiwan, Province of China Country Code
        case TW
        /// Tanzania, United Republic of Country Code
        case TZ
        /// Ukraine Country Code
        case UA
        /// Uganda Country Code
        case UG
        /// United States Minor Outlying Islands Country Code
        case UM
        /// United States of America Country Code
        case US
        /// Uruguay Country Code
        case UY
        /// Uzbekistan Country Code
        case UZ
        /// Holy See Country Code
        case VA
        /// Saint Vincent and the Grenadines Country Code
        case VC
        /// Venezuela (Bolivarian Republic of) Country Code
        case VE
        /// Virgin Islands (British) Country Code
        case VG
        /// Virgin Islands (U.S.) Country Code
        case VI
        /// Viet Nam Country Code
        case VN
        /// Vanuatu Country Code
        case VU
        /// Wallis and Futuna Country Code
        case WF
        /// Samoa Country Code
        case WS
        /// Yemen Country Code
        case YE
        /// Mayotte Country Code
        case YT
        /// South Africa Country Code
        case ZA
        /// Zambia Country Code
        case ZM
        /// Zimbabwe Country Code
        case ZW

    public typealias RawValue = String

    public var rawValue: RawValue {
        switch self {
        case .AD:
            return"AD"
        case .AE:
            return"AE"
        case .AF:
            return"AF"
        case .AG:
            return"AG"
        case .AI:
            return"AI"
        case .AL:
            return"AL"
        case .AM:
            return"AM"
        case .AO:
            return"AO"
        case .AQ:
            return"AQ"
        case .AR:
            return"AR"
        case .AS:
            return"AS"
        case .AT:
            return"AT"
        case .AU:
            return"AU"
        case .AW:
            return"AW"
        case .AX:
            return"AX"
        case .AZ:
            return"AZ"
        case .BA:
            return"BA"
        case .BB:
            return"BB"
        case .BD:
            return"BD"
        case .BE:
            return"BE"
        case .BF:
            return"BF"
        case .BG:
            return"BG"
        case .BH:
            return"BH"
        case .BI:
            return"BI"
        case .BJ:
            return"BJ"
        case .BL:
            return"BL"
        case .BM:
            return"BM"
        case .BN:
            return"BN"
        case .BO:
            return"BO"
        case .BQ:
            return"BQ"
        case .BR:
            return"BR"
        case .BS:
            return"BS"
        case .BT:
            return"BT"
        case .BV:
            return"BV"
        case .BW:
            return"BW"
        case .BY:
            return"BY"
        case .BZ:
            return"BZ"
        case .CA:
            return"CA"
        case .CC:
            return"CC"
        case .CD:
            return"CD"
        case .CF:
            return"CF"
        case .CG:
            return"CG"
        case .CH:
            return"CH"
        case .CI:
            return"CI"
        case .CK:
            return"CK"
        case .CL:
            return"CL"
        case .CM:
            return"CM"
        case .CN:
            return"CN"
        case .CO:
            return"CO"
        case .CR:
            return"CR"
        case .CU:
            return"CU"
        case .CV:
            return"CV"
        case .CW:
            return"CW"
        case .CX:
            return"CX"
        case .CY:
            return"CY"
        case .CZ:
            return"CZ"
        case .DE:
            return"DE"
        case .DJ:
            return"DJ"
        case .DK:
            return"DK"
        case .DM:
            return"DM"
        case .DO:
            return"DO"
        case .DZ:
            return"DZ"
        case .EC:
            return"EC"
        case .EE:
            return"EE"
        case .EG:
            return"EG"
        case .EH:
            return"EH"
        case .ER:
            return"ER"
        case .ES:
            return"ES"
        case .ET:
            return"ET"
        case .FI:
            return"FI"
        case .FJ:
            return"FJ"
        case .FK:
            return"FK"
        case .FM:
            return"FM"
        case .FO:
            return"FO"
        case .FR:
            return"FR"
        case .GA:
            return"GA"
        case .GB:
            return"GB"
        case .GD:
            return"GD"
        case .GE:
            return"GE"
        case .GF:
            return"GF"
        case .GG:
            return"GG"
        case .GH:
            return"GH"
        case .GI:
            return"GI"
        case .GL:
            return"GL"
        case .GM:
            return"GM"
        case .GN:
            return"GN"
        case .GP:
            return"GP"
        case .GQ:
            return"GQ"
        case .GR:
            return"GR"
        case .GS:
            return"GS"
        case .GT:
            return"GT"
        case .GU:
            return"GU"
        case .GW:
            return"GW"
        case .GY:
            return"GY"
        case .HK:
            return"HK"
        case .HM:
            return"HM"
        case .HN:
            return"HN"
        case .HR:
            return"HR"
        case .HT:
            return"HT"
        case .HU:
            return"HU"
        case .ID:
            return"ID"
        case .IE:
            return"IE"
        case .IL:
            return"IL"
        case .IM:
            return"IM"
        case .IN:
            return"IN"
        case .IO:
            return"IO"
        case .IQ:
            return"IQ"
        case .IR:
            return"IR"
        case .IS:
            return"IS"
        case .IT:
            return"IT"
        case .JE:
            return"JE"
        case .JM:
            return"JM"
        case .JO:
            return"JO"
        case .JP:
            return"JP"
        case .KE:
            return"KE"
        case .KG:
            return"KG"
        case .KH:
            return"KH"
        case .KI:
            return"KI"
        case .KM:
            return"KM"
        case .KN:
            return"KN"
        case .KP:
            return"KP"
        case .KR:
            return"KR"
        case .KW:
            return"KW"
        case .KY:
            return"KY"
        case .KZ:
            return"KZ"
        case .LA:
            return"LA"
        case .LB:
            return"LB"
        case .LC:
            return"LC"
        case .LI:
            return"LI"
        case .LK:
            return"LK"
        case .LR:
            return"LR"
        case .LS:
            return"LS"
        case .LT:
            return"LT"
        case .LU:
            return"LU"
        case .LV:
            return"LV"
        case .LY:
            return"LY"
        case .MA:
            return"MA"
        case .MC:
            return"MC"
        case .MD:
            return"MD"
        case .ME:
            return"ME"
        case .MF:
            return"MF"
        case .MG:
            return"MG"
        case .MH:
            return"MH"
        case .MK:
            return"MK"
        case .ML:
            return"ML"
        case .MM:
            return"MM"
        case .MN:
            return"MN"
        case .MO:
            return"MO"
        case .MP:
            return"MP"
        case .MQ:
            return"MQ"
        case .MR:
            return"MR"
        case .MS:
            return"MS"
        case .MT:
            return"MT"
        case .MU:
            return"MU"
        case .MV:
            return"MV"
        case .MW:
            return"MW"
        case .MX:
            return"MX"
        case .MY:
            return"MY"
        case .MZ:
            return"MZ"
        case .NA:
            return"NA"
        case .NC:
            return"NC"
        case .NE:
            return"NE"
        case .NF:
            return"NF"
        case .NG:
            return"NG"
        case .NI:
            return"NI"
        case .NL:
            return"NL"
        case .NO:
            return"NO"
        case .NP:
            return"NP"
        case .NR:
            return"NR"
        case .NU:
            return"NU"
        case .NZ:
            return"NZ"
        case .OM:
            return"OM"
        case .PA:
            return"PA"
        case .PE:
            return"PE"
        case .PF:
            return"PF"
        case .PG:
            return"PG"
        case .PH:
            return"PH"
        case .PK:
            return"PK"
        case .PL:
            return"PL"
        case .PM:
            return"PM"
        case .PN:
            return"PN"
        case .PR:
            return"PR"
        case .PS:
            return"PS"
        case .PT:
            return"PT"
        case .PW:
            return"PW"
        case .PY:
            return"PY"
        case .QA:
            return"QA"
        case .RE:
            return"RE"
        case .RO:
            return"RO"
        case .RS:
            return"RS"
        case .RU:
            return"RU"
        case .RW:
            return"RW"
        case .SA:
            return"SA"
        case .SB:
            return"SB"
        case .SC:
            return"SC"
        case .SD:
            return"SD"
        case .SE:
            return"SE"
        case .SG:
            return"SG"
        case .SH:
            return"SH"
        case .SI:
            return"SI"
        case .SJ:
            return"SJ"
        case .SK:
            return"SK"
        case .SL:
            return"SL"
        case .SM:
            return"SM"
        case .SN:
            return"SN"
        case .SO:
            return"SO"
        case .SR:
            return"SR"
        case .SS:
            return"SS"
        case .ST:
            return"ST"
        case .SV:
            return"SV"
        case .SX:
            return"SX"
        case .SY:
            return"SY"
        case .SZ:
            return"SZ"
        case .TC:
            return"TC"
        case .TD:
            return"TD"
        case .TF:
            return"TF"
        case .TG:
            return"TG"
        case .TH:
            return"TH"
        case .TJ:
            return"TJ"
        case .TK:
            return"TK"
        case .TL:
            return"TL"
        case .TM:
            return"TM"
        case .TN:
            return"TN"
        case .TO:
            return"TO"
        case .TR:
            return"TR"
        case .TT:
            return"TT"
        case .TV:
            return"TV"
        case .TW:
            return"TW"
        case .TZ:
            return"TZ"
        case .UA:
            return"UA"
        case .UG:
            return"UG"
        case .UM:
            return"UM"
        case .US:
            return"US"
        case .UY:
            return"UY"
        case .UZ:
            return"UZ"
        case .VA:
            return"VA"
        case .VC:
            return"VC"
        case .VE:
            return"VE"
        case .VG:
            return"VG"
        case .VI:
            return"VI"
        case .VN:
            return"VN"
        case .VU:
            return"VU"
        case .WF:
            return"WF"
        case .WS:
            return"WS"
        case .YE:
            return"YE"
        case .YT:
            return"YT"
        case .ZA:
            return"ZA"
        case .ZM:
            return"ZM"
        case .ZW:
            return"ZW"
        }
    }
    
    public init?(rawValue: RawValue) {
        switch rawValue.uppercased() {
            case "AD":
                self = .AD
            case "AE":
                self = .AE
            case "AF":
                self = .AF
            case "AG":
                self = .AG
            case "AI":
                self = .AI
            case "AL":
                self = .AL
            case "AM":
                self = .AM
            case "AO":
                self = .AO
            case "AQ":
                self = .AQ
            case "AR":
                self = .AR
            case "AS":
                self = .AS
            case "AT":
                self = .AT
            case "AU":
                self = .AU
            case "AW":
                self = .AW
            case "AX":
                self = .AX
            case "AZ":
                self = .AZ
            case "BA":
                self = .BA
            case "BB":
                self = .BB
            case "BD":
                self = .BD
            case "BE":
                self = .BE
            case "BF":
                self = .BF
            case "BG":
                self = .BG
            case "BH":
                self = .BH
            case "BI":
                self = .BI
            case "BJ":
                self = .BJ
            case "BL":
                self = .BL
            case "BM":
                self = .BM
            case "BN":
                self = .BN
            case "BO":
                self = .BO
            case "BQ":
                self = .BQ
            case "BR":
                self = .BR
            case "BS":
                self = .BS
            case "BT":
                self = .BT
            case "BV":
                self = .BV
            case "BW":
                self = .BW
            case "BY":
                self = .BY
            case "BZ":
                self = .BZ
            case "CA":
                self = .CA
            case "CC":
                self = .CC
            case "CD":
                self = .CD
            case "CF":
                self = .CF
            case "CG":
                self = .CG
            case "CH":
                self = .CH
            case "CI":
                self = .CI
            case "CK":
                self = .CK
            case "CL":
                self = .CL
            case "CM":
                self = .CM
            case "CN":
                self = .CN
            case "CO":
                self = .CO
            case "CR":
                self = .CR
            case "CU":
                self = .CU
            case "CV":
                self = .CV
            case "CW":
                self = .CW
            case "CX":
                self = .CX
            case "CY":
                self = .CY
            case "CZ":
                self = .CZ
            case "DE":
                self = .DE
            case "DJ":
                self = .DJ
            case "DK":
                self = .DK
            case "DM":
                self = .DM
            case "DO":
                self = .DO
            case "DZ":
                self = .DZ
            case "EC":
                self = .EC
            case "EE":
                self = .EE
            case "EG":
                self = .EG
            case "EH":
                self = .EH
            case "ER":
                self = .ER
            case "ES":
                self = .ES
            case "ET":
                self = .ET
            case "FI":
                self = .FI
            case "FJ":
                self = .FJ
            case "FK":
                self = .FK
            case "FM":
                self = .FM
            case "FO":
                self = .FO
            case "FR":
                self = .FR
            case "GA":
                self = .GA
            case "GB":
                self = .GB
            case "GD":
                self = .GD
            case "GE":
                self = .GE
            case "GF":
                self = .GF
            case "GG":
                self = .GG
            case "GH":
                self = .GH
            case "GI":
                self = .GI
            case "GL":
                self = .GL
            case "GM":
                self = .GM
            case "GN":
                self = .GN
            case "GP":
                self = .GP
            case "GQ":
                self = .GQ
            case "GR":
                self = .GR
            case "GS":
                self = .GS
            case "GT":
                self = .GT
            case "GU":
                self = .GU
            case "GW":
                self = .GW
            case "GY":
                self = .GY
            case "HK":
                self = .HK
            case "HM":
                self = .HM
            case "HN":
                self = .HN
            case "HR":
                self = .HR
            case "HT":
                self = .HT
            case "HU":
                self = .HU
            case "ID":
                self = .ID
            case "IE":
                self = .IE
            case "IL":
                self = .IL
            case "IM":
                self = .IM
            case "IN":
                self = .IN
            case "IO":
                self = .IO
            case "IQ":
                self = .IQ
            case "IR":
                self = .IR
            case "IS":
                self = .IS
            case "IT":
                self = .IT
            case "JE":
                self = .JE
            case "JM":
                self = .JM
            case "JO":
                self = .JO
            case "JP":
                self = .JP
            case "KE":
                self = .KE
            case "KG":
                self = .KG
            case "KH":
                self = .KH
            case "KI":
                self = .KI
            case "KM":
                self = .KM
            case "KN":
                self = .KN
            case "KP":
                self = .KP
            case "KR":
                self = .KR
            case "KW":
                self = .KW
            case "KY":
                self = .KY
            case "KZ":
                self = .KZ
            case "LA":
                self = .LA
            case "LB":
                self = .LB
            case "LC":
                self = .LC
            case "LI":
                self = .LI
            case "LK":
                self = .LK
            case "LR":
                self = .LR
            case "LS":
                self = .LS
            case "LT":
                self = .LT
            case "LU":
                self = .LU
            case "LV":
                self = .LV
            case "LY":
                self = .LY
            case "MA":
                self = .MA
            case "MC":
                self = .MC
            case "MD":
                self = .MD
            case "ME":
                self = .ME
            case "MF":
                self = .MF
            case "MG":
                self = .MG
            case "MH":
                self = .MH
            case "MK":
                self = .MK
            case "ML":
                self = .ML
            case "MM":
                self = .MM
            case "MN":
                self = .MN
            case "MO":
                self = .MO
            case "MP":
                self = .MP
            case "MQ":
                self = .MQ
            case "MR":
                self = .MR
            case "MS":
                self = .MS
            case "MT":
                self = .MT
            case "MU":
                self = .MU
            case "MV":
                self = .MV
            case "MW":
                self = .MW
            case "MX":
                self = .MX
            case "MY":
                self = .MY
            case "MZ":
                self = .MZ
            case "NA":
                self = .NA
            case "NC":
                self = .NC
            case "NE":
                self = .NE
            case "NF":
                self = .NF
            case "NG":
                self = .NG
            case "NI":
                self = .NI
            case "NL":
                self = .NL
            case "NO":
                self = .NO
            case "NP":
                self = .NP
            case "NR":
                self = .NR
            case "NU":
                self = .NU
            case "NZ":
                self = .NZ
            case "OM":
                self = .OM
            case "PA":
                self = .PA
            case "PE":
                self = .PE
            case "PF":
                self = .PF
            case "PG":
                self = .PG
            case "PH":
                self = .PH
            case "PK":
                self = .PK
            case "PL":
                self = .PL
            case "PM":
                self = .PM
            case "PN":
                self = .PN
            case "PR":
                self = .PR
            case "PS":
                self = .PS
            case "PT":
                self = .PT
            case "PW":
                self = .PW
            case "PY":
                self = .PY
            case "QA":
                self = .QA
            case "RE":
                self = .RE
            case "RO":
                self = .RO
            case "RS":
                self = .RS
            case "RU":
                self = .RU
            case "RW":
                self = .RW
            case "SA":
                self = .SA
            case "SB":
                self = .SB
            case "SC":
                self = .SC
            case "SD":
                self = .SD
            case "SE":
                self = .SE
            case "SG":
                self = .SG
            case "SH":
                self = .SH
            case "SI":
                self = .SI
            case "SJ":
                self = .SJ
            case "SK":
                self = .SK
            case "SL":
                self = .SL
            case "SM":
                self = .SM
            case "SN":
                self = .SN
            case "SO":
                self = .SO
            case "SR":
                self = .SR
            case "SS":
                self = .SS
            case "ST":
                self = .ST
            case "SV":
                self = .SV
            case "SX":
                self = .SX
            case "SY":
                self = .SY
            case "SZ":
                self = .SZ
            case "TC":
                self = .TC
            case "TD":
                self = .TD
            case "TF":
                self = .TF
            case "TG":
                self = .TG
            case "TH":
                self = .TH
            case "TJ":
                self = .TJ
            case "TK":
                self = .TK
            case "TL":
                self = .TL
            case "TM":
                self = .TM
            case "TN":
                self = .TN
            case "TO":
                self = .TO
            case "TR":
                self = .TR
            case "TT":
                self = .TT
            case "TV":
                self = .TV
            case "TW":
                self = .TW
            case "TZ":
                self = .TZ
            case "UA":
                self = .UA
            case "UG":
                self = .UG
            case "UM":
                self = .UM
            case "US":
                self = .US
            case "UY":
                self = .UY
            case "UZ":
                self = .UZ
            case "VA":
                self = .VA
            case "VC":
                self = .VC
            case "VE":
                self = .VE
            case "VG":
                self = .VG
            case "VI":
                self = .VI
            case "VN":
                self = .VN
            case "VU":
                self = .VU
            case "WF":
                self = .WF
            case "WS":
                self = .WS
            case "YE":
                self = .YE
            case "YT":
                self = .YT
            case "ZA":
                self = .ZA
            case "ZM":
                self = .ZM
            case "ZW":
                self = .ZW
            default:
                return nil
        }
    }
}

