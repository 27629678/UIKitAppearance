//
//  NESkinTabBarProcessor.m
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/9.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import "NESkinTabBarProcessor.h"

#import "UITabBar+SkinTheme.h"

@implementation NESkinTabBarProcessor

+ (void)loadConfiguration:(NESkinTabBarAppearance *)configuration tabBar:(UITabBar *)tabBar
{
    // icon image view tint color
    [[UITabBar appearance] setTintColor:configuration.themeColor];
    [[UITabBar appearance] setBarTintColor:configuration.barTintColor];
    
    if (@available(iOS 10.0, *)) {
        [[UITabBar appearance] setUnselectedItemTintColor:configuration.unselectedTintColor];
    }
    else {
        [[UITabBarItem appearance] setTitleTextAttributes:configuration.unselectedTitleAttributes
                                                 forState:UIControlStateNormal];
        [[UITabBarItem appearance] setTitleTextAttributes:configuration.selectedTitleAttributes
                                                 forState:UIControlStateSelected];
    }
    
    [[UITabBar appearance] hideShadowIfNeeded:configuration.hideShadowIfNeeded];
}

@end
