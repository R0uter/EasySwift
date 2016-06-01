//
//  UIViewController+OC_YXJ.m
//  NTSLTerminus
//
//  Created by 袁晓钧 on 16/1/21.
//  Copyright © 2016年 袁晓钧. All rights reserved.
//

#import "UIViewController+OC_YXJ.h"

@implementation UIViewController (OC_YXJ)

- (void)pushWithSelfStoryBoard:(NSString *)VCName
{
    [self pushWithOtherStoryBoard:VCName storyBoardName:nil];
}
- (void)pushWithOtherStoryBoard:(NSString *)VCName storyBoardName:(NSString *)storyBoardName
{
    NSArray *viewControllers = self.navigationController.viewControllers;
    UIViewController *vc ;
    for (UIViewController *controllers in viewControllers) {
        if ([controllers isKindOfClass:NSClassFromString(VCName)]) {
            vc = controllers ;
        }
    }
    if (vc) {
        [self.navigationController popToViewController:vc animated:YES];
    }else{
        UIStoryboard *story ;
        if (storyBoardName) {
            story = [UIStoryboard storyboardWithName:storyBoardName bundle:nil] ;
        }else{
            story = [self storyboard] ;
        }
        UIViewController *controller = [story instantiateViewControllerWithIdentifier:VCName];
        [self.navigationController pushViewController:controller animated:YES];
    }
}
-(id)getVCFormSelfStoryBoard:(NSString *)VCName
{
    return [self getVCFormOtherStoryBoard:VCName storyBoardName:nil];
}
-(UIViewController *)getVCFormOtherStoryBoard:(NSString *)VCName storyBoardName:(NSString *)storyBoardName
{
    NSArray *viewControllers = self.navigationController.viewControllers;
    UIViewController *tempVC ;
    for (UIViewController *controllers in viewControllers) {
        if ([controllers isKindOfClass:NSClassFromString(VCName)]) {
            tempVC = controllers ;
        }
    }
    if (tempVC) {
        return tempVC ;
    }else{
        UIStoryboard *story ;
        if (storyBoardName) {
            story = [UIStoryboard storyboardWithName:storyBoardName bundle:nil] ;
        }else{
            story = [self storyboard] ;
        }
        UIViewController *controller = [story instantiateViewControllerWithIdentifier:VCName];
        return controller ;
    }
}
- (void)pushVC:(UIViewController *)vc
{
    NSArray *viewControllers = self.navigationController.viewControllers;
    UIViewController *tempVC ;
    for (UIViewController *controllers in viewControllers) {
        if (controllers == vc) {
            tempVC = controllers ;
        }
    }
    if (tempVC) {
        [self.navigationController popToViewController:vc animated:YES];
    }else{
        [self.navigationController pushViewController:vc animated:YES];
    }
}

-(UIColor *)RGB:(CGFloat)r g:(CGFloat)g b:(CGFloat)b{
    return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1];
}

#pragma mark 设置UITextView的行距
-(void)setTextViewSpace:(UITextView *)textVeiw space:(CGFloat)space{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = space;// 字体的行间距
    
    NSDictionary *attributes = @{
                                 NSFontAttributeName:textVeiw.font,
                                 NSParagraphStyleAttributeName:paragraphStyle
                                 };
    textVeiw.attributedText = [[NSAttributedString alloc] initWithString:textVeiw.text attributes:attributes];
}

#pragma mark 是否包含中文字符
-(BOOL)isContainChinese:(NSString *)str
{
    BOOL result = NO ;
    for (int i=0; i<str.length; i++) {
        NSString *temp = [str substringWithRange:NSMakeRange(i, 1)];
        
        NSString *match=@"(^[\u4e00-\u9fa5]+$)";
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF matches %@", match];
        result = [predicate evaluateWithObject:temp];
        
        if (result == YES) {
            break ;
        }
    }
    
    return result ;
}

#pragma mark 屏幕宽度
-(CGFloat)SCREENWIDTH
{
    return [UIScreen mainScreen].bounds.size.width ;
}
#pragma mark 屏幕高度
-(CGFloat)SCREENHEIGHT
{
    return [UIScreen mainScreen].bounds.size.height ;
}

#pragma mark 自动适应页面 standardViewSize:标准view大小
-(void)autoFitView:(NSArray *)constraints standardViewSize:(viewSize)standardViewSize{
    float multiple = 1 ;        //倍数
    
    if (standardViewSize == viewSize_35) {
        multiple = [self SCREENHEIGHT]/480 ;
    }else if (standardViewSize == viewSize_4){
        multiple = [self SCREENHEIGHT]/568 ;
    }else if (standardViewSize == viewSize_47){
        multiple = [self SCREENHEIGHT]/667 ;
    }else if (standardViewSize == viewSize_55){
        multiple = [self SCREENHEIGHT]/736 ;
    }
    
    for (NSLayoutConstraint *cons in constraints) {
        if ([cons isKindOfClass:[NSLayoutConstraint class]]) {
            cons.constant *= multiple;
        }
    }
}
-(void)autoFitView:(NSArray *)constraints multiple:(float)multiple{
    for (NSLayoutConstraint *cons in constraints) {
        if ([cons isKindOfClass:[NSLayoutConstraint class]]) {
            cons.constant *= multiple;
        }
    }
}

@end
