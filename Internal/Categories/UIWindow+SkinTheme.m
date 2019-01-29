//
//  UIWindow+SkinTheme.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/9.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "UIWindow+SkinTheme.h"

@implementation UIWindow (SkinTheme)

+ (void)updateTintColor:(UIColor *)tintColor
{
    [[UIWindow appearance] setTintColor:tintColor];
    
    for (UIWindow *window in [[UIApplication sharedApplication] windows]) {
        [window setTintColor:tintColor];
    }
    
    [[UIApplication sharedApplication] delegate].window.tintColor = tintColor;
}

@end
