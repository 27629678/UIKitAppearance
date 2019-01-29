//
//  UIImage+SkinTheme.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/9.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "UIImage+SkinTheme.h"

@implementation UIImage (SkinTheme)

- (UIImage *)imageWithColor:(UIColor *)color
{
    if (!color) {
        assert(NO);
        return self;
    }
    
    UIImage *image =
    [self imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    UIGraphicsBeginImageContextWithOptions(image.size, NO, image.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextTranslateCTM(context, 0, image.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextClipToMask(context, CGRectMake(0, 0, image.size.width, image.size.height), [image CGImage]);
    CGContextFillRect(context, CGRectMake(0, 0, image.size.width, image.size.height));
    UIImage *target = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return target;
}

+ (UIImage *)imageWithName:(NSString *)name color:(UIColor *)color
{
    UIImage *image = [UIImage imageNamed:name];
    
    return [image imageWithColor:color];
}

@end
