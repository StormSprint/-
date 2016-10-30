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
-(CGFloat)ryq_width {
    return self.frame.size.width;
}
- (void)setRyq_width:(CGFloat)ryq_width {
    CGRect frame = self.frame;
    frame.size.width = ryq_width;
    self.frame = frame;
}
- (CGFloat)ryq_height {
    return self.frame.size.height;
}
- (void)setRyq_height:(CGFloat)ryq_height {
    CGRect frame = self.frame;
    frame.size.height = ryq_height;
    self.frame = frame;
}



@end
