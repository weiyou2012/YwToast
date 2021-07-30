//
//  ShowToast.swift
//  
//
//  Created by Wei You on 2021/7/29.
//

import UIKit

public extension UIViewController {
    
    /// 展示文本提示吐司视图
    /// - Parameters:
    ///   - text: 提示内容
    ///   - location: 展示的位置，默认值是 bottom，底部展示
    func showYwToastTip(text: String, location: ShowLocation = .bottom) {
        let toast = YwToast()
        toast.showTextTipToast(text: text, on: self, location: location)
    }
    
    /// yw Toast的失败提示
    func showYwFailureTip() {
        YwToast().showCenterToast(type: .fail, on: self)
    }
    
    /// yw Toast的成功提示
    func showYwSuccessTip() {
        YwToast().showCenterToast(type: .success, on: self)
    }
    
    /// yw Toast的警告提示
    func showYwWarningTip() {
        YwToast().showCenterToast(type: .warning, on: self)
    }
}
