//
//  NESkinCommonProcessor.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/10.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinCommonProcessor.h"

#import "UIColor+hexString.h"
#import "UIButton+SkinTheme.h"
#import "UITextField+SkinTheme.h"

@implementation NESkinCommonProcessor

+ (void)loadConfiguration:(NESkinConfiguration *)configuration
{
    [self updateUIButtonAppearanceWithConfiguration:configuration];
    [self updateUISwitchAppearanceWithConfiguration:configuration];
    [self updateUITextFieldAppearanceWithConfiguration:configuration];
    [self updateUISegmentedControlAppearanceWithConfiguration:configuration];
    [self updateAlertControllerAppearanceWithConfiguration:configuration];
}

// MARK: private

+ (void)updateUIButtonAppearanceWithConfiguration:(NESkinConfiguration *)configuration
{
    [[UIButton appearance] applyViewAppearance:configuration.theme];
    
    // UIMenuController
    NSArray *cls = @[NSClassFromString(@"UICalloutBar")];
    if (!!cls) {
        [[UIButton appearanceWhenContainedInInstancesOfClasses:cls] updateTitleColor:[UIColor whiteColor]];
    }
    
    if (@available(iOS 10, *)) {
        // 通讯录编辑/创建新联系人删除一条内容时右侧删除按钮适配
        // WARN:(hzyuxiaohua) UITableViewCell.deleteButton
        Class cls = NSClassFromString(@"UISwipeActionStandardButton");
        if (isiPadDevice) {
            cls = NSClassFromString(@"_UITableViewCellActionButton");
        }
        [(UIButton *)[cls appearance] setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [(UIButton *)[cls appearance] setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    }
}

+ (void)updateUISwitchAppearanceWithConfiguration:(NESkinConfiguration *)configuration
{
    [[UISwitch appearance] setOnTintColor:configuration.theme.themeColor];
}

+ (void)updateUITextFieldAppearanceWithConfiguration:(NESkinConfiguration *)configuration
{
    [[UITextField appearance] applyViewAppearance:configuration.theme];
}

+ (void)updateUISegmentedControlAppearanceWithConfiguration:(NESkinConfiguration *)configuration
{
    [[UISegmentedControl appearance] setTintColor:configuration.theme.themeColor];
}

+ (void)updateAlertControllerAppearanceWithConfiguration:(NESkinConfiguration *)configuration
{
    
}

@end
