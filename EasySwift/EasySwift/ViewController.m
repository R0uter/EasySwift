//
//  ViewController.m
//  EasySwift
//
//  Created by yuanxiaojun on 16/3/11.
//  Copyright © 2016年 袁晓钧. All rights reserved.
//

#import "ViewController.h"

#import "EmptyViewFactory.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    int count ;
}

//@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    count = 0 ;
    
    self.tableView.tableFooterView = [UIView new];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [EmptyViewFactory emptyMainView:self.tableView btnBlock:^{
        NSLog(@"adfasdf");
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
//    int temp ;
//    if(count == 0){
//        temp = 0 ;
//        count = 1 ;
//    }else{
//        temp = 0 ;
//        count = 0 ;
//    }
    
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    if(cell == nil){
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    }
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
