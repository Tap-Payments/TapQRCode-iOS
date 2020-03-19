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
