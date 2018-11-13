//
//  CFStatusBarHUD.m
//  CFStatusBarHUD
//
//  Created by WCF on 2017/8/24.
//  Copyright © 2017年 WCF. All rights reserved.
//

#import "CFStatusBarHUD.h"

#define CFMessageFont [UIFont systemFontOfSize:12]

/** 消息停留时间 */
static CGFloat CFMessageDuration = 2.0;
/** 消息显示/隐藏的时间 */
static CGFloat CFAnimationDurarion = 0.25;

@implementation CFStatusBarHUD

/** 全局的窗口 */
static UIWindow *window_;
/** 定时器 */
static NSTimer *timer_;


/**
 * 显示成功消息
 */
+ (void)showSuccess:(NSString *)msg
{
    [self showMessage:msg image:[UIImage imageNamed:@"CFStatusBarHUD.bundle/success"]];
}

/**
 * 显示失败消息
 */
+ (void)showError:(NSString *)msg
{
    [self showMessage:msg image:[UIImage imageNamed:@"CFStatusBarHUD.bundle/error"]];
}

/**
 * 显示加载消息
 */
+ (void)showLoading:(NSString *)msg
{
    //停止定时器
    [timer_ invalidate];
    timer_ = nil;

    //显示窗口
    [self showWindow];

    //添加文字
    UILabel *label = [[UILabel alloc] init];
    label.font = CFMessageFont;
    label.frame = window_.frame;
    label.textAlignment = NSTextAlignmentCenter;
    label.text = msg;
    label.textColor = [UIColor whiteColor];
    [window_ addSubview:label];

    //添加圈圈
    UIActivityIndicatorView *loadingView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [loadingView startAnimating];
    //文字宽度
    CGFloat msgW = [msg sizeWithAttributes:@{NSFontAttributeName:CFMessageFont}].width;
    CGFloat centerX = (window_.frame.size.width - msgW) * 0.5 - 20;
    CGFloat centerY = window_.frame.size.height * 0.5;
    loadingView.center = CGPointMake(centerX, centerY);
    [window_ addSubview:loadingView];

}

/**
 * 隐藏
 */
+ (void)hide
{
    [UIView animateWithDuration:CFAnimationDurarion animations:^{
        CGRect frame = window_.frame;
        frame.origin.y = - frame.size.height;
        window_.frame = frame;
    } completion:^(BOOL finished) {
        window_ = nil;
        timer_ = nil;
    }];
}

/**
 * 显示普通消息
 */
+ (void)showMessage:(NSString *)msg image:(UIImage *)image
{
    //停止定时器
    [timer_ invalidate];

    //显示窗口
    [self showWindow];

    //添加按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.titleLabel.font = CFMessageFont;
    [button setTitle:msg forState:UIControlStateNormal];
    if (image) {
        [button setImage:image forState:UIControlStateNormal];
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    }

    button.frame = window_.bounds;
    [window_ addSubview:button];

    //定时器
    timer_ = [NSTimer scheduledTimerWithTimeInterval:CFMessageDuration target:self selector:@selector(hide) userInfo:nil repeats:NO];

}

/**
 * 显示窗口
 */
+ (void)showWindow
{
    CGFloat windowH;
    //frame数据
    if (IS_IPHONEX) {
        windowH = kNavigationBarHeight;
    }
    else {
        windowH = kStatusBarHeight;
    }
    CGRect frame = CGRectMake(0, -windowH, [UIScreen mainScreen].bounds.size.width, windowH);

    //显示窗口
    window_ = [[UIWindow alloc] init];
    window_.hidden = YES;
    window_.backgroundColor = [UIColor blackColor];
    window_.windowLevel = UIWindowLevelAlert;
    window_.frame = frame;
    window_.hidden = NO;

    //动画
    frame.origin.y = 0;
    [UIView animateWithDuration:CFAnimationDurarion animations:^{
        window_.frame = frame;
    }];

}

@end
