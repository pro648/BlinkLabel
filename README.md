# BlinkLabel

[![CI Status](https://img.shields.io/travis/pro648/BlinkLabel.svg?style=flat)](https://travis-ci.org/pro648/BlinkLabel)
[![Version](https://img.shields.io/cocoapods/v/BlinkLabel.svg?style=flat)](https://cocoapods.org/pods/BlinkLabel)
[![License](https://img.shields.io/cocoapods/l/BlinkLabel.svg?style=flat)](https://cocoapods.org/pods/BlinkLabel)
[![Platform](https://img.shields.io/cocoapods/p/BlinkLabel.svg?style=flat)](https://cocoapods.org/pods/BlinkLabel)

## Overview

BlinkLabel is a subclass of UILabel, written in Swift, that enables the UILabel to blink.

![](https://raw.githubusercontent.com/wiki/pro648/tips/images/podBlink.gif)

## Requirements

- iOS 9
- Swift 4

## Installation

BlinkLabel is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'BlinkLabel', '~> 0.1.0'
```

## Usage

```
import BlinkLabel

let labelThatBlinks = BlinkingLabel()
labelThatBlinks.startBlinking()
labelThatBlinks.stopBlinking()
```

## Example Project

An example project is included with this repo. To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Author

[pro648](https://github.com/pro648)

## License

BlinkLabel is available under the MIT license. See the LICENSE file for more info.

