//
//  CBViewController.m
//  CompressImage
//
//  Created by ly on 13-11-5.
//  Copyright (c) 2013年 ly. All rights reserved.
//

#import "YXJViewController.h"
#import "YXJImageCompressor.h"

@interface YXJViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation YXJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *img = [UIImage imageNamed:@"a.jpg"];
    
    //UIImage转换为NSData
    NSData *imageData = UIImagePNGRepresentation(img);
    NSLog(@"原始大小%lu",imageData.length);
    
    [YXJImageCompressor YXJCompressImage:img limitSize:_128K maxSide:_414PX completion:^(NSData *data) {
        
        NSLog(@"压缩后的大小%lu",data.length);
        
        //NSData转换为UIImage
        UIImage *aa = [UIImage imageWithData: data];
        
        //UIImage转换为NSData
        NSData *bb = UIImageJPEGRepresentation(aa, 0.7);
        NSLog(@"》》压缩后的大小%lu",bb.length);
        
        self.imageView.image = aa;
    }];
}


@end
