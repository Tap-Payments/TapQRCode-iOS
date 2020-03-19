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
        countryCode: .EG,
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
                                     countryCode:TapEmvcoCountryCodeKP
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
| qrCodeContent   | TapQrCodeContent.init(initWithEmv) | Yes      | none         | The TapQrCodeContent which holds the type and content of the required qr code.<br />To generate an EMVCO push payment please look at the parameters for **TapEmvcoPushData,TapEmvcoPaymentNetwork and TapEmvcoAdditionalData** below |
| foreGroundColor | UIColor                            | No       | .black       | The colour of the qr code dots and blocks.                   |
| backgroundColor | UIColor                            | No       | .clear       | The colour of the qr code background.                        |
| waterMark       | UIImage                            | No       | none         | Watermark image appears in the center of the qr code.        |

