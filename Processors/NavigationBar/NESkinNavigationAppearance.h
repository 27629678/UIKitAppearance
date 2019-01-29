//
//  NESkinNavigationAppearance.h
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/9.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import "NESkinBarAppearance.h"

NS_ASSUME_NONNULL_BEGIN

@interface NESkinNavigationAppearance : NESkinBarAppearance

@property (nonatomic, readonly) UIImage *backgroundImage;

@property (nonatomic, readonly) UIColor *filterBtnHighlightColor;

@property (nonatomic, readonly) NSDictionary *titleTextAttributes;

@end

NS_ASSUME_NONNULL_END
