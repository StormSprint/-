//
//  UIView+BSExtension.m
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/10/25.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import "UIView+BSExtension.h"

@implementation UIView (BSExtension)

-(CGFloat)ryq_x {
    return self.frame.origin.x;
}
-(void)setRyq_x:(CGFloat)ryq_x {
    CGRect frame = self.frame;
    frame.origin.x = ryq_x;
    self.frame = frame;
}
-(CGFloat)ryq_y {
    return self.frame.origin.y;
}
-(void)setRyq_y:(CGFloat)ryq_y {
    CGRect frame = self.frame;
    frame.origin.y = ryq_y;
    self.frame = frame;
}
-(CGFloat)width {
    return self.frame.size.width;
}
-(void)setWidth:(CGFloat)width {
    CGRect bounds = self.bounds;
    bounds.size.width = width;
    self.bounds = bounds;
}
-(CGFloat)height {
    return self.bounds.size.height;
}
-(void)setHeight:(CGFloat)height {
    CGRect bounds = self.bounds;
    bounds.size.height = height;
    self.bounds = bounds;
}

@end
