//
//  NSObject+OC_YXJ.m
//  TSLSmartHome
//
//  Created by yuanxiaojun on 16/3/26.
//  Copyright © 2016年 特斯联. All rights reserved.
//

#import "NSObject+OC_YXJ.h"

@implementation NSObject_OC_YXJ

#pragma mark 获取本地化字符串
-(NSString *)localStr:(NSString *)str{
    return [[NSBundle mainBundle] localizedStringForKey:(str) value:@"" table:nil];
}

@end
