//
//  NSObject+OC_YXJ.h
//  TSLSmartHome
//
//  Created by yuanxiaojun on 16/3/26.
//  Copyright © 2016年 特斯联. All rights reserved.
//

#import <Foundation/Foundation.h>

#define IS_SCREEN_35_INCH ([UIScreen mainScreen].bounds.size.height == 480) ? YES : NO
#define IS_SCREEN_4_INCH ([UIScreen mainScreen].bounds.size.height == 568) ? YES : NO
#define IS_SCREEN_47_INCH ([UIScreen mainScreen].bounds.size.height == 667) ? YES : NO
#define IS_SCREEN_55_INCH ([UIScreen mainScreen].bounds.size.height == 736) ? YES : NO

@interface NSObject_OC_YXJ : NSObject

#pragma mark 获取本地化字符串
-(NSString *)localStr:(NSString *)str;

@end
