//
//  NESkinAppearanceInterface.h
//  mail
//
//  Created by hzyuxiaohua on 2019/1/11.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#ifndef NESkinAppearanceInterface_h
#define NESkinAppearanceInterface_h

#import <UIKit/UIKit.h>

@class NESkinViewAppearance, NESkinFontAppearance;

@protocol NESkinAppearanceInterface <NSObject>

- (instancetype)initWithJson:(NSDictionary *)json;

@optional

- (instancetype)initWithJson:(NSDictionary *)json usingDefaultFont:(NESkinFontAppearance *)font;

- (instancetype)initWithJson:(NSDictionary *)json usingDefaultAppearance:(NESkinViewAppearance *)appearance;

@end    // NESkinAppearanceInterface

#endif /* NESkinAppearanceInterface_h */
