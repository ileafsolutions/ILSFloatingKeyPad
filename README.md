# ILSFloatingKeypad
ILSFloatingKeypad is a lightweight, pure-Swift library to provide numberpad and numericpad in iPhone as well as in iPad. It provides you a chance to customise the keypad and helps you to move the keypad with your interest.

<img src="./Asset/floatingart.png?raw=true">

## Features

* Floating Keypad with numericpad and phonepad.
* Customise keypad color and background color.
* Can be used in all texfield delagate methods.
* You can move the keypad anywhere in the view.


## Installation

### Compatibility

-  iOS 9.0+

- Xcode 9.0+, Swift 4+

#### Manual installation
Download and drop the 'ILSFloatingKeypad.framework' file into your Xcode project.
Make Sure you add the Framework by Embedded Binaries
Set Enable Bitcode to NO in your build settings


## Usage

1. The simplest use-case is declaring the ILSFloatingKeypad instance:

```swift
var keyPad = ILSFloatingKeypad
```

2. Set the ILSFloatingKeypad to textField in textFieldShouldBeginEditing delegate method

```swift
 keyPad = ILSFloatingKeyPad(frameOfNumberPad: CGSize(width: 200, height: 200), texField: textField, numberPadType: NumberPadType.NumericPad,ButtonbackgroundColor:nil,KeyPadborderColor:nil,ButtonTitleColor:nil)
```

3. Works perfect for all textfield delegates even for textfield validations on using texfield shouldChangeCharactersIn delegate 

4.Switch to Numberpad and Numericpad


## Author

iLeaf Solutions
[http://www.ileafsolutions.com](http://www.ileafsolutions.com)





