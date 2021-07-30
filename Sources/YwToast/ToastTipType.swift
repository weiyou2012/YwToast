//
//  ToastTipType.swift
//  
//
//  Created by Wei You on 2021/7/29.
//

import UIKit

/// 吐司的提示类型，成功提示，失败提示，和警告提示
enum ToastTipType {
    case success
    case fail
    case warning
    
    var tipText: String {
        switch self {
        case .success:
            return "成功"
        case .fail:
            return "失败"
        case .warning:
            return "警示"
        }
    }
    
    var tipIcon: UIImage? {
        switch self {
        case .success:
            return UIImage(named: "toast_success_icon")
        case .fail:
            return UIImage(named: "toast_failure_icon")
        case .warning:
            return UIImage(named: "toast_warning_icon")
        }
    }
}
