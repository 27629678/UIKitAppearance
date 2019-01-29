//
//  UIButton+SkinTheme.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/16.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "UIButton+SkinTheme.h"

@implementation UIButton (SkinTheme)

- (void)updateTitleColor:(UIColor *)color
{
    [self setTintColor:color];
    [self setTitleColor:color forState:UIControlStateNormal];
}

- (void)applyViewAppearance:(NESkinViewAppearance *)theme
{
    [self updateTitleColor:theme.themeColor];
}

@end
