//
//  UITabBar+SkinTheme.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/8.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "UITabBar+SkinTheme.h"

@implementation UITabBar (SkinTheme)

- (void)hideShadowIfNeeded:(BOOL)hidden
{
    if (@available(iOS 10, *)) {
        [self hideSepratedLineForiOS10:hidden];
    }
    else {
        [self hideSepratedLineForiOS9:hidden];
    }
}

// MARK: - private

- (void)hideSepratedLineForiOS9:(BOOL)hidden
{
    for (UIView *view in self.subviews) {
        if (![view isKindOfClass:[UIImageView class]]) {
            continue;
        }
        
        if (view.frame.size.height < 2) {
            view.hidden = hidden;
        }
    }
}

- (void)hideSepratedLineForiOS10:(BOOL)hidden
{
    Class cls = NSClassFromString(@"_UIBarBackground");
    for (UIView *view in self.subviews) {
        if (![view isKindOfClass:cls]) {
            continue;
        }
        
        for (UIView *target in view.subviews) {
            if (target.frame.size.height < 2) {
                target.hidden = hidden;
            }
        }
    }
}

@end
