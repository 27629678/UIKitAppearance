//
//  NESkinNavigationBarProcessor.m
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/9.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import "NESkinNavigationBarProcessor.h"

#import "UINavigationBar+SkinTheme.h"

@implementation NESkinNavigationBarProcessor

+ (void)loadNavigationBarAppearance:(NESkinNavigationAppearance *)appearance
{
    [self updateCommonNavigationBarAppearanceWithConfiguration:appearance];
}

+ (void)updateCommonNavigationBarAppearanceWithConfiguration:(NESkinNavigationAppearance *)configuration
{
    [[UINavigationBar appearance] setTintColor:configuration.tintColor];
    [[UINavigationBar appearance] setBackgroundImage:configuration.backgroundImage
                                       forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setTitleTextAttributes:configuration.titleTextAttributes];
    
    if (@available(iOS 11.0, *)) {
        [[UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[UIDocumentBrowserViewController class]]]
         setTintColor:[UIColor blackColor]];
    }
    
    [[UINavigationBar appearance] hideShadowIfNeeded:configuration.hideShadowIfNeeded];
}

@end
