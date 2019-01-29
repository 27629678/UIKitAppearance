//
//  UIAlertAction+SkinTheme.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/22.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "UIAlertAction+SkinTheme.h"

#import "NSObject+Accessory.h"

@implementation UIAlertAction (SkinTheme)

// MARK: - skin interface

- (void)applyViewAppearance:(NESkinViewAppearance *)appearance
{
    if (![UIAlertAction hasIvarWithName:@"titleTextColor"]) {
        return;
    }
    
    if (UIAlertActionStyleDestructive == self.style) {
        [self setValue:appearance.destructiveColor forKey:@"titleTextColor"];
    }
    else {
        [self setValue:appearance.font.h1Color forKey:@"titleTextColor"];
    }
}

@end
