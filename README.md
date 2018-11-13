# CFStatusBarHUD
一个简单易用的状态栏指示器

屏幕截图
![image](https://github.com/ziyilixin/CFStatusBarHUD/blob/master/CFStatusBarHUDExample/CFStatusBarHUDExample/Picture/1.png?raw=true)
![image](https://github.com/ziyilixin/CFStatusBarHUD/blob/master/CFStatusBarHUDExample/CFStatusBarHUDExample/Picture/2.png?raw=true)
![image](https://github.com/ziyilixin/CFStatusBarHUD/blob/master/CFStatusBarHUDExample/CFStatusBarHUDExample/Picture/3.png?raw=true)
![image](https://github.com/ziyilixin/CFStatusBarHUD/blob/master/CFStatusBarHUDExample/CFStatusBarHUDExample/Picture/4.png?raw=true)

## 显示成功提示
```objc
[CFStatusBarHUD showSuccess:@"加载成功!"];
```
## 显示失败提示
```objc
[CFStatusBarHUD showError:@"加载失败!"];
```
## 显示正在加载中提示
```objc
[CFStatusBarHUD showLoading:@"正在加载中..."];
```
## 显示普通消息提示
```objc
[CFStatusBarHUD showMessage:@"普通消息" image:[UIImage imageNamed:@"check"]];
```
