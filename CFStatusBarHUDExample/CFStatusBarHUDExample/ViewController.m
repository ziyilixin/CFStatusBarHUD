//
//  ViewController.m
//  CFStatusBarHUDExample
//
//  Created by WCF on 2017/8/25.
//  Copyright © 2017年 WCF. All rights reserved.
//

#import "ViewController.h"
#import "CFStatusBarHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)showSuccess:(id)sender {
    [CFStatusBarHUD showSuccess:@"加载成功!"];
}

- (IBAction)showError:(id)sender {
    [CFStatusBarHUD showError:@"加载失败!"];
}

- (IBAction)showLoading:(id)sender {
     [CFStatusBarHUD showLoading:@"正在加载中..."];
}

- (IBAction)hide:(id)sender {
    [CFStatusBarHUD hide];
}

- (IBAction)message:(id)sender {
     [CFStatusBarHUD showMessage:@"普通消息" image:[UIImage imageNamed:@"check"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
