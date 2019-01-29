//
//  UIImage+SkinTheme.h
//  mail
//
//  Created by hzyuxiaohua on 2019/1/9.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (SkinTheme)

- (UIImage *)imageWithColor:(UIColor *)color;

+ (UIImage *)imageWithName:(NSString *)name color:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
