//
//  NESkinTabBarAppearance.m
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/9.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import "NESkinTabBarAppearance.h"

#import "NESkinThemeConstant.h"

#import "UIColor+hexString.h"

@interface NESkinTabBarAppearance ()

@property (nonatomic, readwrite) UIColor *highlightedTextColor;

@end

@implementation NESkinTabBarAppearance

// MARK: getter

- (UIColor *)barTintColor
{
    return [self.backgroundColor colorWithAlphaComponent:.96f];
}

- (UIColor *)unselectedTintColor
{
    return self.barFont.b1Color;
}

- (NSDictionary *)selectedTitleAttributes
{
    return @{ NSForegroundColorAttributeName: self.themeColor };
}

- (NSDictionary *)unselectedTitleAttributes
{
    return @{ NSForegroundColorAttributeName: self.unselectedTintColor };
}

@end
