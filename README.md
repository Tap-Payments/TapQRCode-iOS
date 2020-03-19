# TapQRCode-iOS

A SDK that provides an interface to generate and scan different types of QR codes.

[![Platform](https://img.shields.io/cocoapods/p/TapThemeManager2020.svg?style=flat)](https://github.com/Tap-Payments/TapThemeManger-iOS)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/TapQRCode-iOS.svg?style=flat)](https://img.shields.io/Tap-Payments/v/TapQRCode-iOS)



## Requirements

To use the SDK the following requirements must be met:

1. **Xcode 11.0** or newer
2. **Swift 4.2** or newer (preinstalled with Xcode)
3. Deployment target SDK for the app: **iOS 12.0** or later



## Installation

------

### Installation with CocoaPods

[CocoaPods](http://cocoapods.org/) is a dependency manager, which automates and simplifies the process of using 3rd-party libraries in your projects.
You can install it with the following command:

```
$ gem install cocoapods
```

### Podfile

To integrate goSellSDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```
platform :ios, '12.0'
use_frameworks!

source 'https://github.com/CocoaPods/Specs.git'

target 'MyApp' do
    
    pod 'TapQRCode-iOS'

end
```

Then, run the following command:

```
$ pod update
```



## Features

------

`TapQRCode-iOS` provides extensive ways for both generating and scanning a QR code, making it one of the most inclusive pods in the market, yet one of the easiest to integrate with.



### Generating a QR Code

You can generate different type of QR codes with the same interface, including:

1. Text based QR codes.
2. URL based QR codes.
3. EMVCO push payment based QR codes.

Also, the `TapQRCodeGenerator` provides an interface to style the generated code as follows:

1. Foreground color.
2. Backgrond color.
3. Centered icon.



### Scanning a QR Code

You can scan different type of QR codes with the same interface from different sources, including:

1. Scan a code within an image.
2. Provide a scanner inline as SubView in your UIView.
3. Show a full screen scanner.

Also, the `TapQRCodeScanner` provides an interface to style the scanner as follows:

1. Showing accessory buttons like flip camera and torch button.
2. Torch button icons.
3. Overlay scanning frame.

## Usage

------

This section descripes how to call and initate different generators and scanners using SWIFT and Objective C languages.



### Generating a QR Code

Below the different ways you can attach a certain theme file to the shared ThemeManager and how to change the theme at run time.



#### Text based QR Code

`TapQRCodeGenerator` can generate QR codes that holds pure text as follows

*Swift*:

```swift
import TapQRCode_iOS
let tapGeneratedQRImage:UIImage = TapQRCodeGenerator.generateQrCode(with: .init(withText: "Hello from Tap Payments"), foreGroundColor: .red, backgroundColor: .white, waterMark: UIImage(named: "Tap"))
```

*Objective-C*:

```objective-c
@import TapQRCode_iOS;
UIImage* tapGeneratedQRImage = [TapQRCodeGenerator generateQrCodeWith:[[TapQrCodeContent alloc]initWithText:@"Hello from Tap Payments"] foreGroundColor:UIColor.redColor backgroundColor:UIColor.whiteColor waterMark:[UIImage imageNamed:@"Tap"]];
```

*Parameters*:

| Parameter name  | Parameter type                  | Required | Default vale | Description                                                  |
| --------------- | ------------------------------- | -------- | ------------ | ------------------------------------------------------------ |
| qrCodeContent   | TapQrCodeContent.init(withText) | Yes      | none         | The TapQrCodeContent which holds the type and content of the required qr code |
| foreGroundColor | UIColor                         | No       | .black       | The colour of the qr code dots and blocks.                   |
| backgroundColor | UIColor                         | No       | .clear       | The colour of the qr code background.                        |
| waterMark       | UIImage                         | No       | none         | Watermark image appears in the center of the qr code.        |



#### URL based QR Code

`TapQRCodeGenerator` can generate QR codes that holds pure URL as follows

*Swift*:

```swift
import TapQRCode_iOS
let tapGeneratedQRImage:UIImage = TapQRCodeGenerator.generateQrCode(with: .init(withUrl: URL(string: "https://tap.company")), foreGroundColor: .red, backgroundColor: .white, waterMark: UIImage(named: "Tap"))
```

*Objective-C*:

```objective-c
@import TapQRCode_iOS;
UIImage* tapGeneratedQRImage = [TapQRCodeGenerator generateQrCodeWith:[[TapQrCodeContent alloc]initWithUrl:[NSURL URLWithString:@"https://tap.company"]] foreGroundColor:UIColor.redColor backgroundColor:UIColor.whiteColor waterMark:[UIImage imageNamed:@"Tap"]];
```

*Parameters*:

| Parameter name  | Parameter type                 | Required | Default vale | Description                                                  |
| --------------- | ------------------------------ | -------- | ------------ | ------------------------------------------------------------ |
| qrCodeContent   | TapQrCodeContent.init(withUrl) | Yes      | none         | The TapQrCodeContent which holds the type and content of the required qr code |
| foreGroundColor | UIColor                        | No       | .black       | The colour of the qr code dots and blocks.                   |
| backgroundColor | UIColor                        | No       | .clear       | The colour of the qr code background.                        |
| waterMark       | UIImage                        | No       | none         | Watermark image appears in the center of the qr code.        |



#### Emvco Push Payment based QR Code

`TapQRCodeGenerator` can generate QR codes that holds an Emvco Push Payment code, that can be read from any acceptable EMVCO parser as follows

*Swift*:

```swift
import TapQRCode_iOS

do {
    let image = try TapQRCodeGenerator.generateQrCode(with: .init(withEmv:
        TapEmvcoPushData(pointOfInitiation: .Dynamic,
        merchantPaymentTags: [.init(with: .VisaTag02, value: "4600678934521435")],
        transactionAmount: 10,
        transactionCurrency: .KWD,
        extraFeesMode: .FixedFees,
        extraFeesAmount: 5,
        countryCode: .KW,
        merchantCategoryCode: "1171",
        merchantName: "Tap Payments",
        merchantCity: "Kuwait City",
        postalCode: nil,
        additionData: TapEmvcoAdditionalData(
                           billNumber: "Bill 123",
                           customerLabel: "Tap Customer",
                           loyaltyNumber: "123",
                           mobileNumber: "0096599999999",
                           purposeForTransaction: "Tap Transaction",
                           storeLabel: "Store 1",
                           terminalLabel: "Terminal 1",
										       additionalCustomerDataCollection: .addressPhone))))
}catch {
    print(error.localizedDescription)
}
```

*Objective-C*:

```objective-c
@import TapQRCode_iOS;
	NSError* error;
    
	UIImage* tapGeneratedQRImage = [TapQRCodeGenerator generateQrCodeWith:[[TapQrCodeContent alloc]initWithEmv:[[TapEmvcoPushData alloc]
                                     initWithPointOfInitiation:TapEmvcoOfInitiationDynamic
                                     merchantPaymentTags:@[[[TapEmvcoPaymentNetwork alloc]initWith:TapEmvcoNetworkTagsVisaTag02 value:@"4600678934521435"]]
                                     transactionAmount:10
                                     transactionCurrency:TapEmvcoCurrencyCodeKWD
                                     extraFeesMode:TapEmvcoExtraFeesFixedFees
                                     extraFeesAmount:5
                                     countryCode:TapEmvcoCountryCodeKW
                                     merchantCategoryCode:@"1171"
                                     merchantName:@"Tap Payments"
                                     merchantCity:@"Kuwait City"
                                     postalCode:nil
                                     additionData:[[TapEmvcoAdditionalData alloc]
                                                   initWithBillNumber:@"123"
                                                   customerLabel:@"Tap Customer"
                                                   loyaltyNumber:@"123"
                                                   mobileNumber:@"0096599999999"
                                                   purposeForTransaction:@"Tap Transaction"
                                                   storeLabel:@"Store 1"
                                                   terminalLabel:@"Terminal 1"
                                                   additionalCustomerDataCollection:TapEmvcoAdditionalDataCollectionPhoneEmail]
                                     error:&error]] foreGroundColor:UIColor.redColor backgroundColor:UIColor.whiteColor waterMark:[UIImage imageNamed:@"Tap"]];
```

*Parameters*:

| Parameter name  | Parameter type                     | Required | Default vale | Description                                                  |
| --------------- | ---------------------------------- | -------- | ------------ | ------------------------------------------------------------ |
| qrCodeContent   | TapQrCodeContent.init(initWithEmv) | Yes      | none         | The TapQrCodeContent which holds the type and content of the required qr code.<br />To generate an EMVCO push payment please look at the parameters for **TapEmvcoPushData,TapEmvcoPaymentNetwork and TapEmvcoAdditionalData ** below |
| foreGroundColor | UIColor                            | No       | .black       | The colour of the qr code dots and blocks.                   |
| backgroundColor | UIColor                            | No       | .clear       | The colour of the qr code background.                        |
| waterMark       | UIImage                            | No       | none         | Watermark image appears in the center of the qr code.        |



##### TapEmvcoPushData

This model represents a much easier and understandable wrapper for the [Standard EMVCO data](https://drive.google.com/file/d/11-xScJ2lOvXxpwVJJWxUK59puOPGuDqB/view?usp=sharing). We at Tap wanted to provide an interface so entities can generate EMVCO accepted codes without the need of understanding and reading the complicated EMVCO standard.

###### TapEmvcoPushData init with direct data

TapEmvcoPushData can be initiated by providing the data inline as follows:

*Swift*:

```swift
import TapQRCode_iOS

do {
    let tapEmvcoData:TapEmvcoPushData = try TapEmvcoPushData.init(
        pointOfInitiation: .Dynamic,
        merchantPaymentTags: [.init(with: .VisaTag02, value: "4600678934521435")],
        transactionAmount: 10,
        transactionCurrency: .KWD,
        extraFeesMode: .FixedFees,
        extraFeesAmount: 5,
        countryCode: .KW,
        merchantCategoryCode: "1171",
        merchantName: "Tap Payments",
        merchantCity: "Kuwait City",
        postalCode: nil,
        additionData: TapEmvcoAdditionalData(
                           billNumber: "Bill 123",
                           customerLabel: "Tap Customer",
                           loyaltyNumber: "123",
                           mobileNumber: "0096599999999",
                           purposeForTransaction: "Tap Transaction",
                           storeLabel: "Store 1",
                           terminalLabel: "Terminal 1",
                           additionalCustomerDataCollection: .addressPhone),
        alternateLanguageData: TapEmvcoAlternateLanguage(
                            with: .ar,
                            alternatLanguageMerchantName: "تاب",
                            alternatLanguageMerchantCityName: "الكويت"))
}catch{
    print(error.localizedDescription)
}
```

*Objective-C*:

```objective-c
@import TapQRCode_iOS;

NSError* error;

TapEmvcoPushData* tapEmvcoData = [[TapEmvcoPushData alloc]
initWithPointOfInitiation:TapEmvcoOfInitiationDynamic
merchantPaymentTags:@[[[TapEmvcoPaymentNetwork alloc]initWith:TapEmvcoNetworkTagsVisaTag02 value:@"4600678934521435"]]
transactionAmount:10
transactionCurrency:TapEmvcoCurrencyCodeKWD
extraFeesMode:TapEmvcoExtraFeesFixedFees
extraFeesAmount:5
countryCode:TapEmvcoCountryCodeKW
merchantCategoryCode:@"1171"
merchantName:@"Tap Payments"
merchantCity:@"Kuwait City"
postalCode:nil
additionData:[[TapEmvcoAdditionalData alloc]
              initWithBillNumber:@"Bill 123"
              customerLabel:@"Tap Customer"
              loyaltyNumber:@"Loyal Number 1"
              mobileNumber:@"+96599999999"
              purposeForTransaction:@"Tap Transaction"
              storeLabel:@"Tap Store # 1"
              terminalLabel:@"Tap Terminal # 1"
              additionalCustomerDataCollection:TapEmvcoAdditionalDataCollectionPhoneEmail]
alternateLanguageData:[[TapEmvcoAlternateLanguage alloc]
                       initWith:TapAlternateLanguageEnumAr
                       alternatLanguageMerchantName:@"تاب"
                       alternatLanguageMerchantCityName:@"الكويت"]
               error:&error];
```



*Parameters*:

| Parameter name        | Parameter type            | Required | Default vale | Description                                                  |
| --------------------- | ------------------------- | -------- | ------------ | ------------------------------------------------------------ |
| pointOfInitiation     | TapEmvcoOfInitiation      | Yes      | none         | Defines whether the QR code is a static or a dynamic one. Static is payable multiple while dynamic is payable once. **Provides a descriptive way for EMVCO Point of Initiation Method (ID "01")** |
| merchantPaymentTags   | [TapEmvcoPaymentNetwork]  | Yes      | none         | Provides a list of merchant global identifers for different payment network tags. **At least one payment tag should be provided** |
| transactionAmount     | Float                     | No       | 0            | The amount of the transaction, please note that the decimal part should match the official decimal part of the given currency code |
| transactionCurrency   | TapEmvcoCurrencyCode      | Yes      | none         | The currency of the transaction. **Provides a descriptive way for EMVCO Transaction Currency (ID "53")** |
| extraFeesMode         | TapEmvcoExtraFees         | No       | .FixedFees   | Defines the extra fees collection mode, whether NONE, or a fixed fee or a percentage of the total amount or promop the user to enter whatever he wants. **Provides a descriptive way for EMVCO Tip or Convenience Indicator (ID "55")** |
| extraFeesAmount       | Float                     | No       | 0            | Defines the value of the extra fees, if NONE or Promopt no need to pass it, if fixed then a number > 0 and if percentage "00.01” and “99.99” shall be used |
| countryCode           | TapEmvcoCountryCode       | Yes      | none         | Defines the country code where the merchant transacts.**Provides a descriptive way for EMVCO Country Code (ID "58")** |
| merchantCategoryCode  | String                    | Yes      | none         | Defines the code of the merchant nature as defined in the ISO 18245. For more information, see [ISO 18245](https://www.iso.org/standard/33365.html) |
| merchantName          | String                    | Yes      | none         | Defines the merchant's name up to 25                         |
| merchantCity          | String                    | Yes      | none         | Defines the city of the merchant up to 25                    |
| postalCode            | String                    | No       | none         | Defines postal code address of he merchant up to 25          |
| additionData          | TapEmvcoAdditionalData    | No       | none         | Defines the Additional Data Field Template (ID "62"). **Details below** |
| alternateLanguageData | TapEmvcoAlternateLanguage | No       | none         | Defines the Language Template (ID "64"). Which displays the merchant name and city in a localised language of his choice. |

##### TapEmvcoAdditionalData

This model represents a much easier and understandable wrapper for the *Additional Data Field Template (ID "62")* found in  [Standard EMVCO data](https://drive.google.com/file/d/11-xScJ2lOvXxpwVJJWxUK59puOPGuDqB/view?usp=sharing). We at Tap wanted to provide an interface so entities can generate EMVCO accepted codes without the need of understanding and reading the complicated EMVCO standard.

*Parameters*:

| Parameter name                   | Parameter type                   | Required | Default vale | Description                                                  |
| -------------------------------- | -------------------------------- | -------- | ------------ | ------------------------------------------------------------ |
| billNumber                       | String                           | No       | none         | The invoice number or bill number, will always be truncated to first 25 charachters. Write it as *** if you want the mobile app to gather it |
| customerLabel                    | String                           | No       | none         | This value could be provided by the merchant, if known, or could be an indication to the mobile application to provide a prompt that will allow the consumer to input their Customer Label, will always be truncated to first 25 charachters Write it as *** if you want the mobile app to gather it |
| loyaltyNumber                    | String                           | No       | none         | Typically a loyalty card number., will always be truncated to first 25 charachters Write it as *** if you want the mobile app to gather it |
| mobileNumber                     | String                           | No       | none         | Mobile phone number to be used for multiple use cases, such as mobile top- up and bill payment, will always be truncated to first 25 charachters Write it as *** if you want the mobile app to gather it |
| purposeForTransaction            | String                           | No       | none         | Any value as defined by the merchant or acquirer in order to define the purpose of the transaction, will always be truncated to first 25 charachters Write it as *** if you want the mobile app to gather it |
| storeLabel                       | String                           | No       | none         | A distinctive id associated to a store, will always be truncated to first 25 charachters Write it as *** if you want the mobile app to gather it |
| terminalLabel                    | String                           | No       | none         | A distinctive id associated to a terminal inside a store, will always be truncated to first 25 charachters Write it as *** if you want the mobile app to gather it |
| additionalCustomerDataCollection | TapEmvcoAdditionalDataCollection | No       | .None        | Contains indications that the mobile application should include the requested information in order to complete the transaction. The information requested should be provided by the mobile application in the authorization without unnecessarily prompting the consumer. If present, the Additional Consumer Data Request (ID "09") shall contain any combination of the characters: "A", "M" and/or "E", and there shall only be a single instance of each of these characters. |

###### TapEmvcoPushData init with Dictionary

TapEmvcoPushData can be initiated by providing the dictionary which can be loaded from JSON file or JSON response from backend as follows:

*Swift*:

```swift
import TapQRCode_iOS

let url = Bundle.main.url(forResource: "EmvcoJson", withExtension: "json")!
let data = try! Data(contentsOf: url)
let emvcoDataFromJson:[String:Any] = try! JSONSerialization.jsonObject(with: data, options:.allowFragments) as! [String : Any]
do {
    let tapEmvcoData:TapEmvcoPushData = try TapEmvcoPushData.init(withDictionary: emvcoDataFromJson)
}catch{
    print(error.localizedDescription)
}
```

*Objective-C*:

```objective-c
@import TapQRCode_iOS;

NSError* error;
NSError* jsonError;
NSURL* url = [[NSBundle mainBundle] URLForResource:@"EmvcoJson" withExtension:@"json"];
NSData* data = [NSData dataWithContentsOfURL:url];
NSDictionary* emvcoDataFromJson = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&jsonError];
if(!jsonError)
{
    TapEmvcoPushData* tapEmvcoData = [[TapEmvcoPushData alloc]initWithDictionary:emvcoDataFromJson error:&error];
    NSLog(@"%@",@"");
}
```



*Accepted JSON format:*

```json
{
    "pointOfInitiation": "12",
    "merchantCategoryCode": "1711",
    "merchantName": "Tap Payments",
    "merchantCity": "Kuwait City",
    "paymentNetworks": [
        {
            "tag": "VisaTag02",
            "value": "4600678934521435"
        },
        {
            "tag": "VisaTag03",
            "value": "4600678934521467"
        },
        {
            "tag": "MasterTag04",
            "value": "555544443333111"
        },
        {
            "tag": "MasterTag05",
            "value": "555544443333222"
        },
        {
            "tag": "NPCITag06",
            "value": ""
        },
        {
            "tag": "NPCITag07",
            "value": ""
        },
        {
            "tag": "AmexTag011",
            "value": ""
        },
        {
            "tag": "AmexTag012",
            "value": ""
        }
    ],
    "countryCode": "KW",
    "transactionCurrencyCode": "414",
    "transactionAmount": 10,
    "extraFeesMode": "02",
    "extraFeesAmount": 5,
    "billNumber": "123093133",
    "customerLabel": "Tap Customer",
    "terminalLabel": "POS 1",
    "storeLabel": "Kuwait City",
    "loyaltyNumber": "78876",
    "mobileNumber": "0096599999999",
    "purposeForTransaction": "Tap Transaction",
    "additionalCustomerDataCollection": "ME",
    "alternateLanguageLocale": "ar",
    "alternateLanguageMerchantName":"تاب للمدفوعات",
    "alternateLanguageMerchantCityName":"الكويت"
}
```

### Scanning a QR Code

Below the different ways you can scan a QR code using different ways.



#### Extract QR Code from a static Image

`TapQRCodeScanner` can scan a QR code from a given Image without using the camera.

*Swift*:

```swift
import TapQRCode_iOS
let tapQRCodeScannerResult:TapQRCodeScannerResult = TapQRCodeScanner().scan(from: pickedImage)
```

*Objective-C*:

```objective-c
@import TapQRCode_iOS;
TapQRCodeScannerResult* tapQRCodeScannerResult = [[[TapQRCodeScanner alloc]init] scanFrom:pickedImage];
```

*Parameters*:

| Parameter name | Parameter type | Required | Default vale | Description                                    |
| -------------- | -------------- | -------- | ------------ | ---------------------------------------------- |
| from           | UIImage        | Yes      | none         | The UIImage you want to extract a qr code from |



#### Inline QR Code scanner

`TapQRCodeScanner` can scan a QR code from a camera stream inside a given UIView. So you can fit a scanner inside your layout

*Swift*:

```swift
import TapQRCode_iOS
let tapBarCodeScanner:TapQRCodeScanner = TapQRCodeScanner()
tapBarCodeScanner.scan(inside: inlineView,
                        shouldHideUponScanning: true,
                        erroCallBack: { [weak self] error in
                           print (error)
                        },scannedCodeCallBack: { [weak self] tapScanResult in
                            print (tapScanResult.scannedText!)
                        },scannerRemovedCallBack: { [weak self] in
                            print("scannerStopped")
                        },introFadeIn: false,
                          outroFadeOut: false,
		                      top:0, bottom:0, right:0, left:0)
```

*Objective-C*:

```objective-c
@import TapQRCode_iOS;
TapQRCodeScanner* tapQRCodeScanner = [[TapQRCodeScanner alloc]init];
    
[tapQRCodeScanner scanInside:inlineView
    shouldHideUponScanning:YES
    erroCallBack:^(NSString * error) {
        NSLog(@"%@",error);
    } scannedCodeCallBack:^(TapQRCodeScannerResult * scannerResult) {
        NSLog(@"%@",scannerResult.scannedText);
    } scannerRemovedCallBack:^{
        NSLog(@"%@",@"Scanner removed");
    } introFadeIn:NO outroFadeOut:NO
    top:0 bottom:0 right:0 left:0];
```

*Parameters*:

| Parameter name         | Parameter type                   | Required | Default vale | Description                                                  |
| ---------------------- | -------------------------------- | -------- | ------------ | ------------------------------------------------------------ |
| holdingView            | UIView                           | Yes      | none         | The subview the caller wants to show the scanner in          |
| shouldHideUponScanning | Bool                             | No       | true         | if true, then the scanner will dismiss itself after reading a code. Default True |
| erroCallBack           | ((String) -> ())                 | No       | nil          | Closure used to send a string description of any error prevented the scannr to start |
| scannedCodeCallBack    | ((TapQRCodeScannerResult) -> ()) | No       | nil          | Closure used to send a string description of the scanned code |
| scannerRemovedCallBack | (() -> ())                       | No       | nil          | Closure used to inform when the scanner is removed           |
| introFadeIn            | Bool                             | No       | false        | When set tthe scanner will fade in when ready                |
| outroFadeOut           | Bool                             | No       | false        | When set the scanner will fde out upon completion            |
| top                    | CGFloat                          | No       | 0            | Top margin from the holder uiview. Default is 0              |
| bottom                 | CGFloat                          | No       | 0            | Bottom margin from the holder uiview. Default is 0           |
| right                  | CGFloat                          | No       | 0            | Right margin from the holder uiview. Default is 0            |
| Left                   | CGFloat                          | No       | 0            | Left margin from the holder uiview. Default is 0             |

#### Modal Full Screen QR Code scanner

`TapQRCodeScanner` can scan a QR code from a camera stream in a full screen mode by showing the scanner as model from a given UIViewController

*Swift*:

```swift
import TapQRCode_iOS
TapQRCodeScanner().scan(fullScreen: self,
    showTorchButton: true,
    showOverlay: true,
    showSwitchCameraButton: true,
    statusBar: .default,
    cancelButtonTitle: "Cancel",
    torchButtonIcon: UIImage(named: "torchIcon"),
    erroCallBack: { (error) in
        print(error)
    }, scannedCodeCallBack: { scannedValue in
         print(scannedValue.scannedText ?? "")
    }) {
        print("Scanner Canceled")
    }
```

*Parameters*:

| Parameter name          | Parameter type                   | Required | Default vale | Description                                                  |
| ----------------------- | -------------------------------- | -------- | ------------ | ------------------------------------------------------------ |
| fromController          | UIViewController                 | Yes      | none         | The view controller the scanner will be presented from       |
| showTorchButton         | Bool                             | No       | true         | Determine if the torch button will be visible on the scanner. Default true |
| showOverlay             | Bool                             | No       | true         | Determine if the overlay will be visible on the scanner. Default true |
| showSwitchCameraButton  | Bool                             | No       | False        | Determine if the switch button will be visible on the scanner. Default false |
| statusBar               | UIStatusBarStyle                 | No       | .default     | Determine what UIStatusbar stule you want. Default .default  |
| cancelButtonTitle       | String                           | No       | Cancel       | Determine the title of the cancel button. Default Cancel     |
| torchButtonIcon         | UIImage                          | No       | none         | If you want to set a specific icon for the torch button      |
| erroCallBack            | ((String) -> ())                 | No       | nil          | Closure used to send a string description of any error prevented the scannr to start |
| scannedCodeCallBack     | ((TapQRCodeScannerResult) -> ()) | No       | nil          | Closure used to send a string description of the scanned code |
| scannerCanceledCallBack | (() -> ())                       | No       | nil          | Closure used to inform when the scanner is cancelled         |
