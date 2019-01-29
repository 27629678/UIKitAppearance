//
//  UITabBar+SkinTheme.h
//  mail
//
//  Created by hzyuxiaohua on 2019/1/8.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITabBar (SkinTheme)

- (void)hideShadowIfNeeded:(BOOL)hidden UI_APPEARANCE_SELECTOR;

@end

NS_ASSUME_NONNULL_END
