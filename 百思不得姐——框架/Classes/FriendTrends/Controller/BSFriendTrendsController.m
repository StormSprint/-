//
//  BSFriendTrendsController.m
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/10/27.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import "BSFriendTrendsController.h"

@interface BSFriendTrendsController ()

@end

@implementation BSFriendTrendsController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftBtn setImage:[UIImage imageNamed:@"friendsRecommentIcon"] forState:UIControlStateNormal];
    [leftBtn setImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] forState:UIControlStateHighlighted];
    [leftBtn sizeToFit];
    [leftBtn addTarget:self action:@selector(recommentIconClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];

}

- (void)recommentIconClick {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor redColor];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
