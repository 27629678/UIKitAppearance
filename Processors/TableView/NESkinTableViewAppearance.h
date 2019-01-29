//
//  NESkinTableViewAppearance.h
//  mail
//
//  Created by hzyuxiaohua on 2019/1/15.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinViewAppearance.h"

#import "NESkinFontAppearance.h"
#import "NETableViewCellAppearance.h"

NS_ASSUME_NONNULL_BEGIN

@interface NESkinTableViewAppearance : NESkinViewAppearance

@property (nonatomic, readonly) NETableViewCellAppearance *cell;

@end

NS_ASSUME_NONNULL_END
