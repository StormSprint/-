//
//  BSLoginViewController.m
//  百思不得姐——框架
//
//  Created by 阮玉强 on 2016/10/30.
//  Copyright © 2016年 ryq. All rights reserved.
//

#import "BSLoginViewController.h"

@interface BSLoginViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *loginViewLeading;

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIButton *changeBtn;
@property (weak, nonatomic) IBOutlet UIButton *registerBtn;


@end

@implementation BSLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.loginBtn.layer.cornerRadius = 5;
    self.loginBtn.layer.masksToBounds = YES;
    self.registerBtn.layer.cornerRadius = 5;
    self.registerBtn.layer.masksToBounds = YES;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
- (IBAction)closeLogin {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)loginOrRegister {
    
    if (self.loginViewLeading.constant) {
        self.loginViewLeading.constant = 0;
        self.changeBtn.selected = NO;
    }else {
        self.loginViewLeading.constant = - self.view.ryq_width;
        self.changeBtn.selected = YES;
    }
    
    [UIView animateWithDuration:0.25 animations:^{
        [self.view layoutIfNeeded];
    }];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
