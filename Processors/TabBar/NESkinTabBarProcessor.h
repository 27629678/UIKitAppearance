//
//  NESkinTabBarProcessor.h
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/9.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import "NESkinTabBarAppearance.h"

NS_ASSUME_NONNULL_BEGIN

@interface NESkinTabBarProcessor : NSObject

+ (void)loadConfiguration:(NESkinTabBarAppearance *)configuration tabBar:(UITabBar *)tabBar;

@end

NS_ASSUME_NONNULL_END
