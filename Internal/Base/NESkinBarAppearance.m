//
//  NESkinBarAppearance.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/23.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinBarAppearance.h"

#import "NESkinThemeConstant.h"

@interface NESkinBarAppearance ()

@property (nonatomic, readwrite) BOOL hideShadowIfNeeded;

@property (nonatomic, readwrite) NESkinBarFontAppearance *barFont;

@end

@implementation NESkinBarAppearance

// MARK: override

- (instancetype)initWithJson:(NSDictionary *)json usingDefaultAppearance:(NESkinViewAppearance *)appearance
{
    if (self = [super initWithJson:json usingDefaultAppearance:appearance]) {
        self.hideShadowIfNeeded = [json booleanForKey:kNESkinBarShadowLine];
        
        NSDictionary *font = [json dictionaryForKey:kNESkinThemeFonts];
        self.barFont = [[NESkinBarFontAppearance alloc] initWithJson:font usingDefaultFont:appearance.font];
    }
    
    return self;
}

@end
