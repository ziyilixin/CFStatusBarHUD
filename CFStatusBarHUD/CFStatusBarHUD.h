//
//  CFStatusBarHUD.h
//  CFStatusBarHUD
//
//  Created by WCF on 2017/8/24.
//  Copyright © 2017年 WCF. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kStatusBarHeight [[UIApplication sharedApplication] statusBarFrame].size.height
#define kTopHeight 44.0
#define kNavigationBarHeight (kStatusBarHeight + kTopHeight)
#define kTabBarHeight ([[UIApplication sharedApplication] statusBarFrame].size.height>20?83:49)
#define IS_IPHONEX ([[UIScreen mainScreen] bounds].size.height == 812 || [[UIScreen mainScreen] bounds].size.height == 896)

@interface CFStatusBarHUD : NSObject

/**
 * 显示成功消息
 */
+ (void)showSuccess:(NSString *)msg;

/**
 * 显示失败消息
 */
+ (void)showError:(NSString *)msg;

/**
 * 显示加载消息
 */
+ (void)showLoading:(NSString *)msg;

/**
 * 隐藏
 */
+ (void)hide;

/**
 * 显示普通消息
 */
+ (void)showMessage:(NSString *)msg image:(UIImage *)image;

@end
