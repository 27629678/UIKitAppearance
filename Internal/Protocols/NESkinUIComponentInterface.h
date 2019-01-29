//
//  NESkinUIComponentInterface.h
//  
//
//  Created by hzyuxiaohua on 2019/1/11.
//

#import <UIKit/UIKit.h>

#import "NESkinConfiguration.h"
#import "NETableViewCellAppearance.h"

#ifndef NETableViewCellSkinInterface_h
#define NETableViewCellSkinInterface_h

@protocol NESkinViewInterface <NSObject>

- (void)applyViewAppearance:(NESkinViewAppearance *)appearance UI_APPEARANCE_SELECTOR;

@end    // NESkinUIComponentInterface

@protocol NESkinTableViewCellAppearance <NSObject>

- (void)applyTableViewCellAppearance:(NETableViewCellAppearance *)appearance UI_APPEARANCE_SELECTOR;

@end    // NESkinTableViewCellAppearance

@protocol NESkinViewControllerInterface <NSObject>

@property (nonatomic, readonly) NESkinConfiguration *skin;

- (void)applyViewControllerAppearanceConfiguration:(NESkinConfiguration *)config;

@end    // NESkinViewControllerInterface

#endif /* NETableViewCellSkinInterface_h */
