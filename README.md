# YwToast

![Swift](https://img.shields.io/badge/Swift-4.2-important) ![iOS](https://img.shields.io/badge/iOS-11.0-blue) ![SwiftPM](https://img.shields.io/badge/SwiftPM-supported-brightgreen)



## 要求

系统 iOS 11.0 及以上，Swift 4.2及 以上。

## 安装

使用 Swift Package 安装


## 使用方法

在 UIViewController 中，直接调用几个方法，直接使用。

```swift
# 文本内容的吐司提示
func showToastTip(text: String, location: ShowLocation = .bottom)
# 失败的提示
func showYwFailureTip()
# 成功的提示
func showYwSuccessTip()
# 警示的提示
func showYwWarningTip()
```





