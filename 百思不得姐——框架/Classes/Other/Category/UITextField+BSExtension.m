//
//  UITextField+BSExtension.m
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/11/2.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import "UITextField+BSExtension.h"

@implementation UITextField (BSExtension)




- (void)setPlaceHolderColor:(UIColor *)placeHolderColor {
    
    NSString *oldPlaceHoder = self.placeholder;
    self.placeholder = @"";
    self.placeholder = oldPlaceHoder;
    
    if (placeHolderColor == nil) {
        /*
        系统默认的placeHolderColor：
        UIExtendedSRGBColorSpace 0 0 0.0980392 0.22
         */
        placeHolderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    }
    
    [self setValue:placeHolderColor forKeyPath:@"placeholderLabel.textColor"];
}

- (UIColor *)placeHolderColor {
    return [self valueForKeyPath:@"placeholderLabel.textColor"];    
}

@end
