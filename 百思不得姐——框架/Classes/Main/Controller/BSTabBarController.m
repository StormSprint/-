//
//  BSTabBarController.m
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/10/23.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import "BSTabBarController.h"
#import "BSEssenceController.h"
#import "BSNavigationController.h"
#import "BSNewController.h"
#import "BSFriendTrendsController.h"
#import "BSMeController.h"
#import "BSTabBar.h"

@interface BSTabBarController ()

@end

@implementation BSTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpTabBar];
    
    [self setUpTabBarItem];
    
    [self setUpChildVc];
}

//初始化自定义tabBar
-(void)setUpTabBar {

    [self setValue:[[BSTabBar alloc] init] forKey:@"tabBar"];
}

//初始化TabBarItem
- (void)setUpTabBarItem {
    //获取全局TabBarItem
    self.tabBarItem = [UITabBarItem appearance];
    
    //普通状态下字体颜色设置
    NSMutableDictionary *norAtts = [NSMutableDictionary new];
    norAtts[NSForegroundColorAttributeName] = [UIColor grayColor];
    //选中状态下字体颜色设置
    NSMutableDictionary *selAtts = [NSMutableDictionary new];
    selAtts[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    [self.tabBarItem setTitleTextAttributes:norAtts  forState:UIControlStateNormal];
    [self.tabBarItem setTitleTextAttributes:selAtts forState:UIControlStateSelected];
}

//初始化子控制器
- (void)setUpChildVc {
    
    [self addOneChildVc:[[BSEssenceController alloc] init] title:@"精华" norImage:@"tabBar_essence_icon" selImage:@"tabBar_essence_click_icon"];
    [self addOneChildVc:[[BSNewController alloc] init] title:@"新帖" norImage:@"tabBar_new_icon" selImage:@"tabBar_new_click_icon"];
    [self addOneChildVc:[[BSFriendTrendsController alloc] init] title:@"关注" norImage:@"tabBar_friendTrends_icon" selImage:@"tabBar_friendTrends_click_icon"];
    [self addOneChildVc:[[BSMeController alloc] init] title:@"我" norImage:@"tabBar_me_icon" selImage:@"tabBar_me_click_icon"];
    
}

//添加子控制器  title：tabBarItem标题 norImage：普通状态图片的名称  selImage：选中状态的图片名称
- (void)addOneChildVc:(UIViewController *)vc title:(NSString * __nonnull)title norImage:(NSString * __nonnull)norImage selImage:(NSString *__nonnull)selImage {
    BSNavigationController *nav = [[BSNavigationController alloc] initWithRootViewController:vc];
    vc.tabBarItem.title = title;
    if (norImage.length && selImage.length) {
        vc.tabBarItem.image = [UIImage imageNamed:norImage];
        vc.tabBarItem.selectedImage = [UIImage imageNamed:selImage];
        
    }
    [self addChildViewController:nav];
}

@end
