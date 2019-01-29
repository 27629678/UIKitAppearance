//
//  UIApplication+SkinTheme.h
//  mail
//
//  Created by hzyuxiaohua on 2019/1/12.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (SkinTheme)

@property (nonatomic, readonly, class) UIStatusBarStyle currentStatusBarStyle;

+ (void)showDefaultStatusBarStyle;

+ (void)showDefaultStatusBarStyleAnimated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
