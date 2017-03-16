# 图片式 LLImageTabBarController

<img src="https://github.com/LvJianfeng/LLTabBarController/blob/master/demo.gif" width="400" align="center"> 

## Descrption
第一个版本相对较为简单，具体效果请运行Demo

LLImageTabBarController 图片式TabBar

* 支持点击果冻动画
* 支持不同的tabbar image

## Usage
```swift
let tabBarViewController: LLImageTabBarController = LLImageTabBarController()     
// 线条显示控制
// tabBarViewController.isShowLine = true

// 注意了 选中图片的命名请在非选中图片后加_selected  例如:未选中ask.png  选中ask_selected.png
// tabBarData使用需要在其他自定义参数后进行赋值 哈哈
tabBarViewController.tabBarData = (["home", "weitao", "ask", "cart", "my"], [OneTableViewController(), TwoTableViewController(), ThreeTableViewController(), FourTableViewController(), FiveTableViewController()])
window?.rootViewController = tabBarViewController
```

```swift
/// 是否显示线条         默认显示
var isShowLine: Bool = false

/// 线条颜色               默认颜色
var lineColor: UIColor = UIColor.init(red: 212.0/255.0, green: 212.0/255.0, blue: 212.0/255.0, alpha: 1.0)

/// TabBar数据 ([图片名称], [各个根控制器])
var tabBarData: ([String]?, [UIViewController]?)?

```

## Issues
如果使用过程中，有什么问题欢迎issues。

## Example

示例代码见ViewController.swift
