//
//  NESkinBackgroundImageView.m
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/8.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import "NESkinBackgroundImageView.h"

@implementation NESkinBackgroundImageView

- (void)setBackgroundImage:(UIImage *)image
{
    self.image = image;
    self.contentMode = UIViewContentModeScaleAspectFill;
}

@end
