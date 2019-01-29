//
//  NESkinViewController.m
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/8.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import "NESkinViewController.h"

#import "NESkinManager.h"
#import "NESkinBackgroundImageView.h"

@interface NESkinViewController ()

@end

@implementation NESkinViewController

// MARK: override

- (void)loadViewIfNeeded
{
    [super loadViewIfNeeded];

    [self backgroundImageView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self applyViewControllerAppearanceConfiguration:self.skin];
}

// MARK: private

- (NESkinBackgroundImageView *)backgroundImageView
{
    if (!_backgroundImageView) {
        NESkinBackgroundImageView *imageView =
        [[NESkinBackgroundImageView alloc] initWithFrame:CGRectZero];
        imageView.backgroundColor = [UIColor clearColor];
        [self.view insertSubview:imageView atIndex:0];
        imageView.translatesAutoresizingMaskIntoConstraints = NO;
        [[imageView.topAnchor constraintEqualToAnchor:self.view.topAnchor] setActive:YES];
        [[imageView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor] setActive:YES];
        [[imageView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor] setActive:YES];
        [[imageView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor] setActive:YES];
        
        _backgroundImageView = imageView;
    }
    
    return _backgroundImageView;
}

// MARK: getter

- (NESkinConfiguration *)skin
{
    return [[NESkinManager defaultManager] config];
}

// MARK: skin interface

- (void)applyViewControllerAppearanceConfiguration:(NESkinConfiguration *)config
{
    
}

@end
