//
//  NESkinViewController.h
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/8.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import "NESkinUIComponentInterface.h"

@class NESkinBackgroundImageView;

NS_ASSUME_NONNULL_BEGIN

@interface NESkinViewController : UIViewController <NESkinViewControllerInterface>

@property (nonatomic, strong) NESkinBackgroundImageView *backgroundImageView;

@end

NS_ASSUME_NONNULL_END
