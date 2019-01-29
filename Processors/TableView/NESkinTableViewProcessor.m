//
//  NESkinTableViewProcessor.m
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/9.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import "NESkinTableViewProcessor.h"

#import "UITableViewHeaderFooterView+SkinTheme.h"

@implementation NESkinTableViewProcessor

+ (void)loadTableViewAppearance:(NESkinTableViewAppearance *)appearance
{
    [self loadHeaderAppearance:appearance];
    [self loadSectionAppearance:appearance];
    [self loadCellAppearance:appearance.cell];
    [self loadFooterAppearance:appearance];
    [self applyTableViewAppearance:appearance];
}

// MARK: private

+ (void)applyTableViewAppearance:(NESkinTableViewAppearance *)appearance
{
    
}

+ (void)loadHeaderAppearance:(NESkinTableViewAppearance *)appearance
{
    [[CustomUITableHeaderView appearance] applyTableViewCellAppearance:appearance.cell];
}

+ (void)loadFooterAppearance:(NESkinTableViewAppearance *)appearance
{
    [[CustomTableFooterView appearance] applyTableViewCellAppearance:appearance.cell];
}

+ (void)loadSectionAppearance:(NESkinTableViewAppearance *)appearance
{
    [[UITableViewHeaderFooterView appearance] applyViewAppearance:appearance];
}

+ (void)loadCellAppearance:(NETableViewCellAppearance *)appearance
{
    [[CustomTableViewCell appearance] applyTableViewCellAppearance:appearance];
}

@end
