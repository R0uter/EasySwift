//
//  YXJJPush.h
//  YXJJPush
//
//  Created by YXJ on 16/2/15.
//  Copyright (c) 2015年 YXJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate+JPush.h"
#import "YXJJPushSingleton.h"
#import "YXJJPushProtocol.h"
#import "JPUSHService.h"
@interface YXJJPush : NSObject<YXJJPushProtocol>
HMSingletonH(YXJJPush)


/** 注册JPush */
+(void)registerJPush:(NSDictionary *)launchOptions;


/** 添加监听者 */
+(void)addJPushListener:(id<YXJJPushProtocol>)listener;

/** 移除监听者 */
+(void)removeJPushListener:(id<YXJJPushProtocol>)listener;


/** 注册alias、tags */
+(void)setTags:(NSSet *)tags alias:(NSString *)alias resBlock:(void(^)(BOOL res, NSSet *tags,NSString *alias))resBlock;


@end
