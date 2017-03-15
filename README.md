# 图片式 LLImageTabBarController

<img src="https://github.com/LvJianfeng/LLTabBarController/blob/master/demo.png" width="400" align="center"> 

## Descrption
第一个版本相对较为简单
	LLImageTabBarController 图片式TabBar
		1.支持点击果冻动画
		2.支持不同的tabbar image

未来将实现不同风格TabBar

## Usage
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
