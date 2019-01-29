//
//  NESkinFontAppearance.h
//  mail
//
//  Created by hzyuxiaohua on 2019/1/11.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinAppearanceInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface NESkinFont : NSObject <NESkinAppearanceInterface>

@property (nonatomic, assign) CGFloat size;

@property (nonatomic, assign) CGFloat weight;

@property (nonatomic, strong) UIColor *color;

@end    // NESkinFont

@interface NESkinFontAppearance : NSObject <NESkinAppearanceInterface>

@property (nonatomic, readonly) UIColor *h1Color;

@property (nonatomic, readonly) UIColor *h2Color;

@property (nonatomic, readonly) UIColor *h3Color;

@property (nonatomic, readonly) UIColor *h4Color;

@end    // NESkinFontAppearance

@interface NESkinBarFontAppearance : NSObject <NESkinAppearanceInterface>

@property (nonatomic, readonly) UIColor *b1Color;

@property (nonatomic, readonly) UIColor *b2Color;

@end    // NESkinBarFontAppearance

NS_ASSUME_NONNULL_END
