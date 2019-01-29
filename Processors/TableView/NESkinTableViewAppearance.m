//
//  NESkinTableViewAppearance.m
//  mail
//
//  Created by hzyuxiaohua on 2019/1/15.
//  Copyright © 2019 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NESkinTableViewAppearance.h"

#import "NESkinThemeConstant.h"

@interface NESkinTableViewAppearance ()

@property (nonatomic, readwrite) NETableViewCellAppearance *cell;

@end

@implementation NESkinTableViewAppearance

- (instancetype)initWithJson:(NSDictionary *)json usingDefaultAppearance:(NESkinViewAppearance *)appearance
{
    if (self = [super initWithJson:json usingDefaultAppearance:appearance]) {
        NSDictionary *cell = [json dictionaryForKey:kNESkinCell];
        self.cell = [[NETableViewCellAppearance alloc] initWithJson:cell defaultAppearance:appearance];
    }
    
    return self;
}

@end
