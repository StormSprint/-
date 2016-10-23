//
//  BSTabBarController.m
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/10/23.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import "BSTabBarController.h"

@interface BSTabBarController ()

@end

@implementation BSTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpChildVc];
}



- (void)setUpChildVc {
    
    [self addOneChildVc:[[UIViewController alloc] init] title:@"精华" norImage:@"tabBar_essence_icon" selImage:@"tabBar_essence_click_icon"];
    [self addOneChildVc:[[UIViewController alloc] init] title:@"新帖" norImage:@"tabBar_essence_icon" selImage:@"tabBar_essence_click_icon"];
    
}

- (void)addOneChildVc:(UIViewController *)vc title:(NSString *)title norImage:(NSString *)norImage selImage:(NSString *)selImage {
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:norImage];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selImage];
    [self addChildViewController:nav];
}

@end
