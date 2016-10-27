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
@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;

-(CGFloat)ryq_x;
-(void)setRyq_x:(CGFloat)ryq_x;
-(CGFloat)ryq_y;
-(void)setRyq_y:(CGFloat)ryq_y;
-(CGFloat)width;
-(void)setWidth:(CGFloat)width;
-(CGFloat)height;
-(void)setHeight:(CGFloat)height;

@end
