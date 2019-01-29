//
//  NESkinFontAppearance.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/11.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinFontAppearance.h"

#import "NESkinThemeConstant.h"

#import "UIColor+hexString.h"

@implementation NESkinFont

- (instancetype)initWithJson:(NSDictionary *)json
{
    if (self = [super init]) {
        NSString *hex = [json stringForKey:kNESkinThemeFontColor];
        self.color = [UIColor colorFromHexString:hex];
        self.size = [[json numberForKey:kNESkinThemeFontSize] floatValue];
        self.weight = [[json numberForKey:kNESkinThemeFontBold] floatValue];
    }
    
    if (!self.color) {
        return nil;
    }
    
    return self;
}

@end    // NESkinFont

@interface NESkinFontAppearance ()

@property (nonatomic, readwrite) UIColor *h1Color;

@property (nonatomic, readwrite) UIColor *h2Color;

@property (nonatomic, readwrite) UIColor *h3Color;

@property (nonatomic, readwrite) UIColor *h4Color;

@end

@implementation NESkinFontAppearance

- (instancetype)initWithJson:(NSDictionary *)json
{
    return [self initWithJson:json usingDefaultFont:nil];
}

- (instancetype)initWithJson:(NSDictionary *)json usingDefaultFont:(NESkinFontAppearance *)target
{
    if (self = [super init]) {
        NSString *hex = @"";
        NSDictionary *font = [json dictionaryForKey:kNESkinThemeH1Font];
        hex = [font stringForKey:kNESkinThemeFontColor];
        self.h1Color = [UIColor colorFromHexString:hex] ? : target.h1Color;
        
        font = [json dictionaryForKey:kNESkinThemeH2Font];
        hex = [font stringForKey:kNESkinThemeFontColor];
        self.h2Color = [UIColor colorFromHexString:hex] ? : target.h2Color;
        
        font = [json dictionaryForKey:kNESkinThemeH3Font];
        hex = [font stringForKey:kNESkinThemeFontColor];
        self.h3Color = [UIColor colorFromHexString:hex] ? : target.h3Color;
        
        font = [json dictionaryForKey:kNESkinThemeH4Font];
        hex = [font stringForKey:kNESkinThemeFontColor];
        self.h4Color = [UIColor colorFromHexString:hex] ? : target.h4Color;
    }
    
    return self;
}

@end    // NESkinFontAppearance

@interface NESkinBarFontAppearance ()

@property (nonatomic, readwrite) UIColor *b1Color;

@property (nonatomic, readwrite) UIColor *b2Color;

@end

@implementation NESkinBarFontAppearance

- (instancetype)initWithJson:(NSDictionary *)json
{
    return [self initWithJson:json usingDefaultFont:nil];
}

- (instancetype)initWithJson:(NSDictionary *)json usingDefaultFont:(NESkinFontAppearance *)target
{
    if (self = [super init]) {
        NSString *hex = @"";
        NSDictionary *font = [json dictionaryForKey:kNESkinThemeBarB1Font];
        hex = [font stringForKey:kNESkinThemeFontColor];
        self.b1Color = [UIColor colorFromHexString:hex] ? : target.h1Color;
        
        font = [json dictionaryForKey:kNESkinThemeBarB2Font];
        hex = [font stringForKey:kNESkinThemeFontColor];
        self.b2Color = [UIColor colorFromHexString:hex] ? : target.h3Color;
    }
    
    return self;
}

@end    // NESkinBarFontAppearance
