//
//  UITextField+BSExtension.h
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/11/2.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (BSExtension)

@property (nonatomic,strong) UIColor *placeHolderColor;

- (UIColor *)placeHolderColor;

- (void)setPlaceHolderColor:(UIColor *)placeHolderColor;

@end
