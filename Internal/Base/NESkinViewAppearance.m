//
//  NESkinViewAppearance.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/11.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinViewAppearance.h"

#import "NESkinThemeConstant.h"

#import "UIColor+hexString.h"

@interface NESkinViewAppearance ()

@property (nonatomic, readwrite) UIColor *tintColor;

@property (nonatomic, readwrite) UIColor *themeColor;

@property (nonatomic, readwrite) UIColor *destructiveColor;

@property (nonatomic, readwrite) UIColor *backgroundColor;

@property (nonatomic, readwrite) UIColor *lightBackgroundColor;

@property (nonatomic, readwrite) NESkinFontAppearance *font;

@property (nonatomic, readwrite) UIStatusBarStyle statusBarStyle;

@end

@implementation NESkinViewAppearance

- (instancetype)initWithJson:(NSDictionary *)json
{
    return [self initWithJson:json usingDefaultAppearance:nil];
}

- (instancetype)initWithJson:(NSDictionary *)json
      usingDefaultAppearance:(NESkinViewAppearance *)appearance
{
    if (self = [super init]) {
        NSString *hex = [json stringForKey:kNESkinTintColor];
        self.tintColor = [UIColor colorFromHexString:hex] ? : appearance.tintColor;
        
        hex = [json stringForKey:kNESkinThemeColor];
        self.themeColor = [UIColor colorFromHexString:hex] ? : appearance.themeColor;
        
        hex = [json stringForKey:kNESkinBackgroundColor];
        self.backgroundColor = [UIColor colorFromHexString:hex] ? : appearance.backgroundColor;
        
        hex = [json stringForKey:kNESkinLightBackgroundColor];
        self.lightBackgroundColor = [UIColor colorFromHexString:hex] ? : appearance.lightBackgroundColor;
        
        hex = [json stringForKey:kNESkinDestructiveColor];
        self.destructiveColor = [UIColor colorFromHexString:hex] ? : [UIColor redColor];
        
        NSNumber *style = [json numberForKey:kNESkinStatusBarStyle] ? : @(appearance.statusBarStyle);
        self.statusBarStyle = style.unsignedIntegerValue;
        
        NSDictionary *font = [json dictionaryForKey:kNESkinThemeFonts];
        self.font = [[NESkinFontAppearance alloc] initWithJson:font usingDefaultFont:appearance.font];
    }
    
    return self;
}

@end
