//
//  UIButton+SkinTheme.h
//  mail
//
//  Created by hzyuxiaohua on 2019/1/16.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinUIComponentInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (SkinTheme) <NESkinViewInterface>

- (void)updateTitleColor:(UIColor *)color UI_APPEARANCE_SELECTOR;

@end

NS_ASSUME_NONNULL_END
