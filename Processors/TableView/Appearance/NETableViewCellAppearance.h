//
//  NETableViewCellAppearance.h
//  mail
//
//  Created by hzyuxiaohua on 2019/1/11.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinViewAppearance.h"

NS_ASSUME_NONNULL_BEGIN

@interface NETableViewCellAppearance : NESkinViewAppearance

@property (nonatomic, readonly) UIColor *selectedColor;                 // 选中色

@property (nonatomic, readonly) UIColor *highlightColor;                // 高亮色(Cell中的勾选icon等)

@property (nonatomic, readonly) UIColor *separateLineColor;             // 分隔线色

- (instancetype)initWithJson:(NSDictionary *)json defaultAppearance:(NESkinViewAppearance *)appearance;

@end

NS_ASSUME_NONNULL_END
