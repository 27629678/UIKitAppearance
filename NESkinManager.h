//
//  NESkinManager.h
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/7.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NESkinConfiguration.h"

NS_ASSUME_NONNULL_BEGIN

@interface NESkinManager : NSObject

@property (nonatomic, readonly) NESkinConfiguration *config;

@property (nonatomic, strong) UITabBarController *tabBarController;

+ (instancetype)defaultManager;

- (void)switchSkinTheme;

@end

NS_ASSUME_NONNULL_END
