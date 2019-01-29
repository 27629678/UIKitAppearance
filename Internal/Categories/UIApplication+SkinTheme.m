//
//  UIApplication+SkinTheme.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/12.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "UIApplication+SkinTheme.h"

#import "NESkinManager.h"

@implementation UIApplication (SkinTheme)

+ (void)showDefaultStatusBarStyle
{
    [UIApplication showDefaultStatusBarStyleAnimated:YES];
}

+ (void)showDefaultStatusBarStyleAnimated:(BOOL)animated
{
    UIStatusBarStyle style = [UIApplication currentStatusBarStyle];
    [[UIApplication sharedApplication] setStatusBarStyle:style animated:animated];
}

+ (UIStatusBarStyle)currentStatusBarStyle
{
    NESkinViewAppearance *theme = [[[NESkinManager defaultManager] config] theme];
    
    return theme.statusBarStyle;
}

@end
