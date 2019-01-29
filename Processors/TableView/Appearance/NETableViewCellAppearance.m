//
//  NETableViewCellAppearance.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/11.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NETableViewCellAppearance.h"

#import "NESkinThemeConstant.h"

#import "UIColor+hexString.h"

@interface NETableViewCellAppearance ()

@property (nonatomic, readwrite) UIColor *selectedColor;                 // 选中色

@property (nonatomic, readwrite) UIColor *highlightColor;                // 高亮色(Cell中的勾选icon等)

@property (nonatomic, readwrite) UIColor *separateLineColor;             // 分隔线色

@end

@implementation NETableViewCellAppearance

- (instancetype)initWithJson:(NSDictionary *)json
           defaultAppearance:(NESkinViewAppearance *)appearance
{
    if (self = [super initWithJson:json usingDefaultAppearance:appearance]) {
        NSString *hex = [json stringForKey:kNESkinCellSelectedColor];
        self.selectedColor = [UIColor colorFromHexString:hex];
        
        hex = [json stringForKey:kNESkinCellHighlightedColor];
        self.highlightColor = [UIColor colorFromHexString:hex];
        
        hex = [json stringForKey:kNESkinCellSeparateColor];
        self.separateLineColor = [UIColor colorFromHexString:hex];
    }
    
    return self;
}

@end
