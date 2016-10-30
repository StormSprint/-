//
//  BSTabBar.m
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/10/25.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import "BSTabBar.h"

@interface BSTabBar()
@property(nonatomic,strong) UIButton *plusBtn;

@end


@implementation BSTabBar

//懒加载
- (UIButton *)plusBtn {
    if (_plusBtn == nil) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        [btn addTarget:self action:@selector(plusBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        _plusBtn = btn;
    }
    return _plusBtn;
}

//监听按钮点击
- (void)plusBtnClick {
    BSLOG(@"plusBtnClick-----");
}

//重写layoutSubviews
-(void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat btnW = self.ryq_width / 5;
    CGFloat btnH = self.ryq_height;
    CGFloat btnY = 0;
    CGFloat btnX = 0;
    int btnIndex = 0;
    for (UIView *subview in self.subviews) {
        if (subview.class == NSClassFromString(@"UITabBarButton")) {
            btnX = btnIndex * btnW;
            if (btnIndex > 1) {
                btnX += btnW;
            }
            subview.frame = CGRectMake(btnX, btnY, btnW, btnH);
            btnIndex++;
        }
    }
    
    self.plusBtn.frame = CGRectMake(0, 0, btnW, btnH);
    self.plusBtn.center = CGPointMake(self.ryq_width * 0.5, self.ryq_height * 0.5);
    
}

@end
