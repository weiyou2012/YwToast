//
//  YwToast.swift
//
//
//  Created by Wei You on 2020/11/11.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

// 吐司提示
public final class YwToast {
    
    /// 延时时间
    private let delayTime: TimeInterval = 1.25
    
    /// 创建一个文本吐司提示图
    /// - Parameter text: 显示文本
    /// - Returns: 文本吐司提示图
    private func makeToastTextTipView(tip text: String) -> UIView {
        
        let tView = UIView()
        tView.layer.cornerRadius = 4
        tView.layer.masksToBounds = true
        tView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        
        let label = UILabel()
        label.text = text
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14)
        label.textColor = .white
        label.numberOfLines = 2
        tView.addSubview(label)

        label.translatesAutoresizingMaskIntoConstraints = false
        let topConstrant = label.topAnchor.constraint(equalTo: tView.topAnchor, constant: 8)
        let bottomConstrant = label.bottomAnchor.constraint(equalTo: tView.bottomAnchor, constant: -8)
        let leadingConstrant = label.leadingAnchor.constraint(equalTo: tView.leadingAnchor, constant: 16)
        let trailingConstrant = label.trailingAnchor.constraint(equalTo: tView.trailingAnchor, constant: -16)
        NSLayoutConstraint.activate([topConstrant, bottomConstrant, leadingConstrant, trailingConstrant])
        
        return tView
    }
    
    /// 创建一个中间吐司提示图
    private func makeCenterToastTipView(tip type: ToastTipType) -> UIView {
        let cttView = UIView()
        cttView.layer.cornerRadius = 6
        cttView.layer.masksToBounds = true
        cttView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        
        let iconImageView = UIImageView(image: type.tipIcon)
        iconImageView.contentMode = .scaleAspectFill
        cttView.addSubview(iconImageView)

        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.centerXAnchor.constraint(equalTo: cttView.centerXAnchor).isActive = true
        iconImageView.topAnchor.constraint(equalTo: cttView.topAnchor, constant: 16).isActive = true
        iconImageView.widthAnchor.constraint(equalTo: iconImageView.heightAnchor).isActive = true
        
        let textLabel = UILabel()
        textLabel.text = type.tipText
        textLabel.font = .systemFont(ofSize: 14)
        textLabel.textColor = .white
        cttView.addSubview(textLabel)

        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 4).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: cttView.centerXAnchor).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: cttView.bottomAnchor, constant: -12).isActive = true
        
        
        return cttView
    }
    
    /// 展示文本提示吐司视图
    /// - Parameters:
    ///   - text: 提示内容
    ///   - on: 展示提示图的控制器
    ///   - location: 展示的位置，默认值是 bottom，底部展示
    func showTextTipToast(text: String, on: UIViewController, location: ShowLocation = .bottom) {
        
        let tView = makeToastTextTipView(tip: text)
        on.view.addSubview(tView)
        
        tView.translatesAutoresizingMaskIntoConstraints = false
        switch location {
        case .top, .bottom:
            tView.centerXAnchor.constraint(equalTo: on.view.centerXAnchor).isActive = true
        case .center:
            tView.centerXAnchor.constraint(equalTo: on.view.centerXAnchor).isActive = true
            tView.centerYAnchor.constraint(equalTo: on.view.centerYAnchor).isActive = true
        }
        switch location {
        case .top:
            tView.topAnchor.constraint(equalTo: on.view.safeAreaLayoutGuide.topAnchor).isActive = true
        case .bottom:
            tView.bottomAnchor.constraint(equalTo: on.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        case .center:
            break
        }
        
        tView.widthAnchor.constraint(lessThanOrEqualToConstant: 256.0).isActive = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delayTime) {
            tView.removeFromSuperview()
        }
    }
    
    /// 展示中间提示吐司视图
    /// - Parameters:
    ///   - type: 吐司视图类型
    ///   - on: 展示提示图的控制器
    func showCenterToast(type: ToastTipType, on: UIViewController) {
        let tView = makeCenterToastTipView(tip: type)
        on.view.addSubview(tView)
                
        tView.translatesAutoresizingMaskIntoConstraints = false
        tView.centerXAnchor.constraint(equalTo: on.view.centerXAnchor).isActive = true
        tView.centerYAnchor.constraint(equalTo: on.view.centerYAnchor).isActive = true
        tView.widthAnchor.constraint(equalToConstant: 90.0).isActive = true
        tView.heightAnchor.constraint(equalToConstant: 90.0).isActive = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delayTime) {
            tView.removeFromSuperview()
        }
    }

    public init() {
        
    }
}

