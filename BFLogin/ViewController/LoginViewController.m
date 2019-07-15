//
//  LoginViewController.m
//  BFLogin
//
//  Created by 齐飞薄 on 2019/7/5.
//  Copyright © 2019 BF. All rights reserved.
//

#import "LoginViewController.h"
#import <Masonry/Masonry.h>
#import "Header.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg"]];
    bgImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:bgImageView];
    [bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];

    UIImageView *logoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo"]];
    logoImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:logoImageView];
    [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.equalTo(self.view.mas_bottom).multipliedBy(0.25);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
    UIView *userView = [[UIView alloc] init];
    userView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.4];
    UIView *passView = [[UIView alloc] init];
    passView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.4];
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    loginButton.backgroundColor = [UIColor colorWithRed:224/255.0 green:43/255.0 blue:95/255.0 alpha:1];
    [loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [loginButton setTitleColor:[UIColor colorWithWhite:0 alpha:0.4] forState:UIControlStateHighlighted];
    
    UIStackView *loginView = [[UIStackView alloc] init];
    loginView.axis = UILayoutConstraintAxisVertical;
    loginView.spacing = 15;
    loginView.distribution = UIStackViewDistributionFillEqually;
    [loginView addArrangedSubview:userView];
    [loginView addArrangedSubview:passView];
    [loginView addArrangedSubview:loginButton];
    [self.view addSubview:loginView];
    [loginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.equalTo(self.view.mas_bottom).multipliedBy(0.6);
        make.left.equalTo(@10);
        make.right.equalTo(@-10);
        make.height.equalTo(@(BFLogin_Height/3));
    }];
    
    [self.view layoutIfNeeded];
    userView.layer.cornerRadius = userView.frame.size.height/2;
    passView.layer.cornerRadius = passView.frame.size.height/2;
    loginButton.layer.cornerRadius = loginButton.frame.size.height/2;
    NSLog(@"%@", userView);
}

-(void)injected
{
    NSLog(@" %@ have injectedssssss",self);
    // 添加你需要刷新UI的方法
    [self viewDidLoad];
}

@end
