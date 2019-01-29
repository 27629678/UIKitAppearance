//
//  UITextField+SkinTheme.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/16.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "UITextField+SkinTheme.h"

@implementation UITextField (SkinTheme)

- (void)applyViewAppearance:(NESkinViewAppearance *)theme
{
    [self setTintColor:theme.themeColor];
    [self setTextColor:theme.font.h1Color];
    
    NSString *target = self.placeholder ? : self.attributedPlaceholder.string;
    if (target.length == 0) {
        return;
    }
    
    NSDictionary *attris = @{ NSForegroundColorAttributeName: theme.font.h4Color};
    self.attributedPlaceholder =
    [[NSAttributedString alloc] initWithString:target attributes:attris];
}

@end
