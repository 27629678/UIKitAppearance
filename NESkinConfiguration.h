//
//  NESkinConfiguration.h
//  mail
//
//  Created by hzyuxiaohua on 2019/1/9.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinTableViewAppearance.h"
#import "NESkinFontAppearance.h"
#import "NESkinTabBarAppearance.h"
#import "NESkinNavigationAppearance.h"
#import "NEMSkinInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface NESkinConfiguration : NSObject

@property (nonatomic, readonly) NESkinViewAppearance *theme;
@property (nonatomic, readonly) NESkinTabBarAppearance *tab;
@property (nonatomic, readonly) NESkinNavigationAppearance *nav;
@property (nonatomic, readonly) NESkinTableViewAppearance *table;

- (instancetype)initWithConfiguration:(NSDictionary *)configuration;

@end

NS_ASSUME_NONNULL_END
