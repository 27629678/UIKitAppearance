//
//  NESkinViewAppearance.h
//  mail
//
//  Created by hzyuxiaohua on 2019/1/11.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinAppearanceInterface.h"

#import "NESkinFontAppearance.h"

NS_ASSUME_NONNULL_BEGIN

@interface NESkinViewAppearance : NSObject <NESkinAppearanceInterface>

@property (nonatomic, readonly) UIColor *tintColor;

@property (nonatomic, readonly) UIColor *themeColor;

@property (nonatomic, readonly) UIColor *destructiveColor;

@property (nonatomic, readonly) UIColor *backgroundColor;

@property (nonatomic, readonly) UIColor *lightBackgroundColor;

@property (nonatomic, readonly) NESkinFontAppearance *font;             // 方案(字体、大小和颜色等)

@property (nonatomic, readonly) UIStatusBarStyle statusBarStyle;

@end

NS_ASSUME_NONNULL_END
