//
//  BSButton.m
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/10/30.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import "BSButton.h"

@implementation BSButton

- (void)awakeFromNib {
    [super awakeFromNib];

//    self.backgroundColor = [UIColor blueColor];
//    self.imageView.backgroundColor = [UIColor redColor];
//    self.titleLabel.backgroundColor = [UIColor greenColor];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;

}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.imageView.ryq_y = 0;
    self.imageView.ryq_x = self.ryq_width * 0.5 - self.imageView.ryq_width * 0.5;
    
    self.titleLabel.ryq_x = 0;
    self.titleLabel.ryq_y = CGRectGetMaxY(self.imageView.frame);
    self.titleLabel.ryq_width = self.ryq_width;
    self.titleLabel.ryq_height = self.ryq_height - self.imageView.ryq_height;
    
//    BSLOG(@"%@",self.titleLabel);
    
}



@end
