//
//  BSLoginTextField.m
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/10/31.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import "BSLoginTextField.h"

@interface BSLoginTextField ()<UITextFieldDelegate>

@end

@implementation BSLoginTextField

- (void)awakeFromNib {
    [super awakeFromNib];
    self.delegate = self;
    self.tintColor = [UIColor whiteColor];
    
//    NSMutableDictionary *attDict = [NSMutableDictionary new];
//    attDict[NSForegroundColorAttributeName] = [UIColor whiteColor];
//    NSAttributedString *attString = [[NSAttributedString alloc] initWithString:self.placeholder attributes:attDict];
//    self.attributedPlaceholder = attString;
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    NSMutableDictionary *attDict = [NSMutableDictionary new];
    attDict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    NSAttributedString *attString = [[NSAttributedString alloc] initWithString:self.placeholder attributes:attDict];
    textField.attributedPlaceholder = attString;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {

    textField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder];
}
@end
