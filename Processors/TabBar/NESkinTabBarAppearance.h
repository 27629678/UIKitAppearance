//
//  NESkinTabBarAppearance.h
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/9.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import "NESkinBarAppearance.h"

NS_ASSUME_NONNULL_BEGIN

@interface NESkinTabBarAppearance : NESkinBarAppearance

@property (nonatomic, readonly) UIColor *barTintColor;

@property (nonatomic, readonly) UIColor *unselectedTintColor;

@property (nonatomic, readonly) NSDictionary *selectedTitleAttributes;

@property (nonatomic, readonly) NSDictionary *unselectedTitleAttributes;

@end

NS_ASSUME_NONNULL_END
