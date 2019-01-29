//
//  UITableViewHeaderFooterView+SkinTheme.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/16.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "UITableViewHeaderFooterView+SkinTheme.h"

@implementation UITableViewHeaderFooterView (SkinTheme)

- (void)applyViewAppearance:(NESkinViewAppearance *)theme
{
    self.textLabel.textColor = theme.font.h3Color;
    self.backgroundView.backgroundColor = theme.lightBackgroundColor;
}

@end
