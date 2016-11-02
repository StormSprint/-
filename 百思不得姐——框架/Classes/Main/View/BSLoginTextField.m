//
//  BSLoginTextField.m
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/10/31.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import "BSLoginTextField.h"

@interface BSLoginTextField ()

@end

@implementation BSLoginTextField

- (void)awakeFromNib {
    [super awakeFromNib];
    self.tintColor = [UIColor whiteColor];
    
}

- (BOOL)becomeFirstResponder {
    
    self.placeHolderColor = [UIColor whiteColor];
    return [super becomeFirstResponder];
}

- (BOOL)resignFirstResponder {
    
    self.placeHolderColor = nil;
    return  [super resignFirstResponder];
}
@end
