//
//  YXJJPushProtocol.h
//  YXJJPush
//
//  Created by YXJ on 16/2/15.
//  Copyright (c) 2015年 YXJ. All rights reserved.
//

@protocol YXJJPushProtocol <NSObject>

@required
-(void)didReceiveRemoteNotification:(NSDictionary *)userInfo;


@end