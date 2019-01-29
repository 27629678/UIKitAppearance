//
//  NESkinNavigationAppearance.m
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/9.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import "NESkinNavigationAppearance.h"

#import "NESkinThemeConstant.h"

#import "UIImage+Util.h"
#import "UIColor+hexString.h"
#import "UIImage+SkinTheme.h"

@interface NESkinNavigationAppearance ()

@property (nonatomic, readwrite) UIColor *filterBtnHighlightColor;

@property (nonatomic, readwrite) NSDictionary *titleTextAttributes;

@end

@implementation NESkinNavigationAppearance

- (instancetype)initWithJson:(NSDictionary *)json usingDefaultAppearance:(NESkinViewAppearance *)appearance
{
    if (self = [super initWithJson:json usingDefaultAppearance:appearance]) {
        NSString *hex = [json stringForKey:kNESkinNavBarFilterColor];
        self.filterBtnHighlightColor = [UIColor colorFromHexString:hex];
    }
    
    return self;
}

// MARK: getter

- (UIColor *)filterBtnHighlightColor
{
    return _filterBtnHighlightColor ? : self.tintColor;
}

- (NSDictionary *)titleTextAttributes
{
    UIFont *font = [UIFont monospacedDigitSystemFontOfSize:16 weight:0];
    
    return @{ NSFontAttributeName: font, NSForegroundColorAttributeName: self.barFont.b1Color };
}

- (UIColor *)barTintColor
{
    return [self.themeColor colorWithAlphaComponent:.96f];
}

- (UIImage *)backgroundImage
{
    return [UIImage imageWithColor:self.barTintColor andSize:CGSizeMake(1, 1)];
}

@end
