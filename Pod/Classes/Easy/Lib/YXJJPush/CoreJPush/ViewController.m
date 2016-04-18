//
//  ViewController.m
//  YXJJPush
//
//  Created by YXJ on 16/2/15.
//  Copyright (c) 2015年 YXJ. All rights reserved.
//

#import "ViewController.h"
#import "YXJJPush.h"

@interface ViewController ()<YXJJPushProtocol>

@end

@implementation ViewController

-(void)didReceiveRemoteNotification:(NSDictionary *)userInfo{
    NSLog(@"ViewController: %@",userInfo);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(go) userInfo:nil repeats:NO];
}

-(void)go{
    [YXJJPush addJPushListener:self];
    
    [YXJJPush setTags:[NSSet setWithArray:@[@"movie"]] alias:@"12343242" resBlock:^(BOOL res, NSSet *tags, NSString *alias) {
        
                if(res){
                    NSLog(@"设置成功：%@,%@,%@",@(res),tags,alias);
                }else{
                    NSLog(@"设置失败");
                }
            }];
}

-(void)dealloc{
    [YXJJPush removeJPushListener:self];
}

@end
