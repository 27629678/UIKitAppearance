//
//  NESkinConfiguration.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/9.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinConfiguration.h"

#import "NESkinThemeConstant.h"
#import "NESkinViewAppearance.h"

@interface NESkinConfiguration ()

@property (nonatomic, readwrite) NESkinViewAppearance *theme;

@property (nonatomic, readwrite) NESkinTabBarAppearance *tab;

@property (nonatomic, readwrite) NESkinNavigationAppearance *nav;

@property (nonatomic, readwrite) NESkinTableViewAppearance *table;

@end

@implementation NESkinConfiguration

- (instancetype)initWithConfiguration:(NSDictionary *)configuration
{
    if (self = [super init]) {
        // theme
        NSDictionary *json = [configuration dictionaryForKey:kNESkinTheme];
        self.theme = [[NESkinViewAppearance alloc] initWithJson:json];
        
        // table
        json = [configuration dictionaryForKey:kNESkinTableView];
        self.table = [[NESkinTableViewAppearance alloc] initWithJson:json usingDefaultAppearance:self.theme];
        
        // tab
        json = [configuration dictionaryForKey:kNESkinTabBar];
        self.tab = [[NESkinTabBarAppearance alloc] initWithJson:json usingDefaultAppearance:self.theme];
        
        // nav
        json = [configuration dictionaryForKey:kNESkinNavBar];
        self.nav = [[NESkinNavigationAppearance alloc] initWithJson:json usingDefaultAppearance:self.theme];
    }
    
    return self;
}

@end
