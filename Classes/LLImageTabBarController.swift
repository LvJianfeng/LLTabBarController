//
//  LLImageTabBarController.swift
//  LLTabBarController
//
//  Created by LvJianfeng on 2017/3/14.
//  Copyright © 2017年 LvJianfeng. All rights reserved.
//

import UIKit

class LLImageTabBarController: UITabBarController {
    
    var llTabBarDelegate: LLTabBarControllerProtocol?
    
    /// 是否显示线条
    var isShowLine: Bool = false
    
    /// 线条颜色
    var lineColor: UIColor = UIColor.init(red: 212.0/255.0, green: 212.0/255.0, blue: 212.0/255.0, alpha: 1.0)
    
    /// TabBar数据 ([图片名称], [各个根控制器], [Controller类名称])
    var tabBarData: ([String]?, [UIViewController]?)? {
        didSet {
            // Data
            viewControllers = tabBarData?.1
            // TabBar
            setupLLTabBar()
        }
    }
    
    /// 设置上一次选中Button
    var selectedButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}

extension LLImageTabBarController {
    // TabBar
    func setupLLTabBar() {
        let rect = self.tabBar.frame;
        
        // Remove
        self.tabBar.removeFromSuperview()
        
        // Custom
        let customView = UIView()
        customView.frame = rect
        customView.backgroundColor = UIColor.white
        self.view.addSubview(customView)
        
        for i in 0..<(tabBarData?.0?.count)! {
            // Button && Setting
            let button = UIButton.init()
            
            button.adjustsImageWhenHighlighted = false
            button.imageView?.contentMode = .scaleAspectFit
            
            button.setImage(UIImage.init(named: (tabBarData?.0?[i])!), for: .normal)
            button.setImage(UIImage.init(named: "\((tabBarData?.0?[i])!)_selected"), for: .selected)
            
            // Frame
            let x = CGFloat(i) * customView.frame.size.width / CGFloat((tabBarData?.0?.count)!)
            button.frame = CGRect.init(x: x, y: 0, width: customView.frame.size.width / CGFloat((tabBarData?.0?.count)!), height: customView.frame.size.height)
            customView.addSubview(button)
            
            // Tag
            button.tag = i
            button.addTarget(self, action: #selector(clickButton(_:)), for: .touchUpInside)
            
            // Init
            if i == 0 {
                button.isSelected = true
                selectedButton = button;
            }
        }
        
        if isShowLine {
            let lineView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: customView.frame.size.width, height: 1.0 / UIScreen.main.scale))
            lineView.backgroundColor = lineColor
            customView.addSubview(lineView)
        }
    }
}

extension LLImageTabBarController {
    
    // Click
    func clickButton(_ sender: UIButton) {
        // Animation
        animationTouchButton(sender)
        
        if !sender.isSelected {
            // Reset last button state
            selectedButton?.isSelected = false
            // Set sender
            sender.isSelected = true
            // Set last button
            selectedButton = sender
            // Index
            selectedIndex = sender.tag
        }
        
        // Tap
        guard ((tabBarData?.1?[sender.tag] as? LLTabBarControllerProtocol?) != nil) else {
            return
        }
        
        if let isProtocol = tabBarData?.1?[sender.tag] as? LLTabBarControllerProtocol? {
            llTabBarDelegate = isProtocol
        }
        
        llTabBarDelegate?.tapTabBarButton(button: sender)
    }
}

extension LLImageTabBarController {
    
   open func animationTouchButton(_ sender: UIButton) {
        sender.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        
        UIView.animate(withDuration: 0.6,
                       delay: 0,
                       usingSpringWithDamping: CGFloat(0.20),
                       initialSpringVelocity: CGFloat(3.0),
                       options: UIViewAnimationOptions.allowUserInteraction,
                       animations: {
                        sender.transform = CGAffineTransform.identity
        },
                       completion: { Void in()  }
        )
    }
    
}
