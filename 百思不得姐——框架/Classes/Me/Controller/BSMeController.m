//
//  BSMeController.m
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/10/27.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import "BSMeController.h"

@interface BSMeController ()

@end

@implementation BSMeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"我";
    
//    UIButton *setting = [UIButton buttonWithType:UIButtonTypeCustom];
//    [setting setImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
//    [setting setImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
//    [setting sizeToFit];
//    [setting addTarget:self action:@selector(settingClick) forControlEvents:UIControlEventTouchUpInside];
//    
//    UIButton *moon = [UIButton buttonWithType:UIButtonTypeCustom];
//    [moon setImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
//    [moon setImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateHighlighted];
//    [moon sizeToFit];
//    [setting addTarget:self action:@selector(moonClick) forControlEvents:UIControlEventTouchUpInside];
//    
    UIBarButtonItem *settingItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"mine-setting-icon"] style:UIBarButtonItemStyleDone target:self action:@selector(settingClick)];
#warning 继续完善该右边按钮
    UIBarButtonItem *moonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"mine-moon-icon"] style:UIBarButtonItemStyleDone target:self action:@selector(moonClick)];
    
    
    self.navigationItem.rightBarButtonItems = @[settingItem,moonItem];
}

- (void)settingClick {
    BSLOGFUC;
}

- (void)moonClick {
    BSLOGFUC;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
