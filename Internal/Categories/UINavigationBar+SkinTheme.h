//
//  UINavigationBar+SkinTheme.h
//  mail
//
//  Created by master on 2019/1/24.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationBar (SkinTheme)

- (void)hideShadowIfNeeded:(BOOL)hidden UI_APPEARANCE_SELECTOR;

@end

NS_ASSUME_NONNULL_END
