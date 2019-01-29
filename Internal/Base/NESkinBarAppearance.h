//
//  NESkinBarAppearance.h
//  mail
//
//  Created by hzyuxiaohua on 2019/1/23.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinViewAppearance.h"

NS_ASSUME_NONNULL_BEGIN

@interface NESkinBarAppearance : NESkinViewAppearance

@property (nonatomic, readonly) BOOL hideShadowIfNeeded;

@property (nonatomic, readonly) NESkinBarFontAppearance *barFont;

@end

NS_ASSUME_NONNULL_END
