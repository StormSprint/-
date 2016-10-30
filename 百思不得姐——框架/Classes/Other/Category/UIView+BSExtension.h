//
//  UIView+BSExtension.h
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/10/25.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (BSExtension)

@property (nonatomic,assign) CGFloat ryq_x;
@property (nonatomic,assign) CGFloat ryq_y;
@property (nonatomic,assign) CGFloat ryq_width;
@property (nonatomic,assign) CGFloat ryq_height;

-(CGFloat)ryq_x;
-(void)setRyq_x:(CGFloat)ryq_x;
-(CGFloat)ryq_y;
-(void)setRyq_y:(CGFloat)ryq_y;
-(CGFloat)ryq_width;
- (void)setRyq_width:(CGFloat)ryq_width;
- (CGFloat)ryq_height;
- (void)setRyq_height:(CGFloat)ryq_height;

@end
