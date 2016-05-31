//
//  NSMutableArray+YXJSwipeUtilityButtons.h
//  YXJSwipeTableViewCell
//
//  Created by YXJ on 11/27/13.
//  Copyright (c) 2013 YXJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (YXJSwipeUtilityButtons)

- (void)YXJSW_addUtilityButtonWithColor:(UIColor *)color title:(NSString *)title;
- (void)YXJSW_addUtilityButtonWithColor:(UIColor *)color attributedTitle:(NSAttributedString *)title;
- (void)YXJSW_addUtilityButtonWithColor:(UIColor *)color icon:(UIImage *)icon;
- (void)YXJSW_addUtilityButtonWithColor:(UIColor *)color normalIcon:(UIImage *)normalIcon selectedIcon:(UIImage *)selectedIcon;

@end


@interface NSArray (YXJSwipeUtilityButtons)

- (BOOL)YXJSW_isEqualToButtons:(NSArray *)buttons;

@end
