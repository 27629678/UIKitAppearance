//
//  UINavigationBar+SkinTheme.m
//  mail
//
//  Created by master on 2019/1/24.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "UINavigationBar+SkinTheme.h"

@implementation UINavigationBar (SkinTheme)

- (void)hideShadowIfNeeded:(BOOL)hidden
{
    if (@available(iOS 10.0, *)) {
        [self hideShadowForiOS10:hidden];
    }
    else {
        [self hideShadowForiOS9:hidden];
    }
}

// MARK: - private

- (void)hideShadowForiOS9:(BOOL)hidden
{
    Class cls = NSClassFromString(@"_UINavigationBarBackground");
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

- (void)hideShadowForiOS10:(BOOL)hidden
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
