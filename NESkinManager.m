//
//  NESkinManager.m
//  SkinManager
//
//  Created by hzyuxiaohua on 2018/11/7.
//  Copyright © 2018 XOYO. All rights reserved.
//

#import "NESkinManager.h"

#import "NESkinCommonProcessor.h"
#import "NESkinTabBarProcessor.h"
#import "NESkinTableViewProcessor.h"
#import "NESkinNavigationBarProcessor.h"

#import "UITabBar+SkinTheme.h"
#import "UIWindow+SkinTheme.h"

@interface NESkinManager ()

@property (nonatomic, readwrite) NESkinConfiguration *config;

@end

@implementation NESkinManager

+ (instancetype)defaultManager
{
    static NESkinManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [NESkinManager new];
    });
    
    return instance;
}

- (void)switchSkinTheme
{
    [UIWindow updateTintColor:self.config.theme.themeColor];
    [NESkinCommonProcessor loadConfiguration:self.config];
    [NESkinTableViewProcessor loadTableViewAppearance:self.config.table];
    [NESkinNavigationBarProcessor loadNavigationBarAppearance:self.config.nav];
    [NESkinTabBarProcessor loadConfiguration:self.config.tab tabBar:self.tabBarController.tabBar];
}

#pragma mark - getter & setter

- (NESkinConfiguration *)config
{
    if (!_config) {
        _config = [self configWithPath:@"skindata/free/default"];
    }
    return _config;
}

#pragma mark - miscs

- (NESkinConfiguration *)configWithPath:(NSString *)path
{
    NSError *error = nil;
    NSString *path = [[NSBundle mainBundle] pathForResource:path ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *configuration = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    NESkinConfiguration *config = [[NESkinConfiguration alloc] initWithConfiguration:configuration];

    return config;
}

@end
