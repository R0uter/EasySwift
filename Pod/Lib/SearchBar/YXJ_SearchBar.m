//
//  YXJ_SearchBar.m
//  MySetsDemo
//
//  Created by YXJ on 15/12/22.
//  Copyright © 2015年 YXJ. All rights reserved.
//

#import "YXJ_SearchBar.h"
#import <objc/runtime.h>

#define YXJ_colorRGBValue(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000)>>16))/255.0 green:((float)((rgbValue & 0xFF00)>>8))/255.0  blue:((float)((rgbValue & 0xFF)))/255.0  alpha:1.0]

#define KAYXJFontColor YXJ_colorRGBValue(0x333333)

#define KAYXJFontLightColor YXJ_colorRGBValue(0xababab)

#define YXJ_SCREENWIDTH [[UIScreen mainScreen]bounds].size.width      //屏宽
#define YXJ_SCREENHEIGHT [[UIScreen mainScreen]bounds].size.height   //  屏高

//searchbar
#define KSearchBarHeight 24
#define KAYXJFontName @"STHeitiSC-Light"

static const char YXJ_SearchBarTextDidBeginEditingBlockKey;
static const char YXJ_SearchBarTextDidChangeBlockKey;
static const char YXJ_SearchBarTextDidEndEditingBlockKey;
static const char YXJ_SearchBarSearchButtonClickedBlockKey;
static const char YXJ_cancelBTClickedBlockKey;

@interface YXJ_SearchBar ()<UISearchBarDelegate>{
    UISearchBar *_searchBar;
    UITextField *_searchField;
    UIButton *_cancelBT;
}
@end

@implementation YXJ_SearchBar

-(instancetype)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setDefaultProperty];
        [self setupSearchBar];
        [self creatCancelButton];
    }
    return self;
}
/*!
 *  设置属性默认值
 */
-(void)setDefaultProperty{
    _YXJ_searchBarPlaceholder = @"search";
    _YXJ_searchBarPlaceholderColor = KAYXJFontLightColor;
    _YXJ_searchBarHeight = KSearchBarHeight;
    _YXJ_searchBarTextColor = KAYXJFontColor;
    _YXJ_cancelColor = KAYXJFontColor;
}
/*!
 *  添加一个searchBar到View上
 */
-(void)setupSearchBar{
    _searchBar = [[UISearchBar alloc] init];
    _searchBar.delegate = self;
    _searchBar.frame = CGRectMake(10, (self.frame.size.height-_YXJ_searchBarHeight)/2, self.frame.size.width-20, _YXJ_searchBarHeight);
    _searchBar.backgroundColor = [UIColor whiteColor];
    _searchBar.barTintColor = [UIColor whiteColor];
    //_searchBar.alpha = 0.83;
    _searchBar.tintColor = KAYXJFontLightColor;// 左边竖直闪动光标颜色
    _searchBar.layer.cornerRadius = _YXJ_searchBarHeight/2;//高度一半（高为24）
    _searchBar.layer.masksToBounds = YES;
    _searchBar.placeholder = _YXJ_searchBarPlaceholder;
    
    UITextField *searchField = [_searchBar valueForKey:@"_searchField"];
    _searchField = searchField;
    // Change search bar text color
    searchField.textColor = _YXJ_searchBarTextColor;
    searchField.font = [UIFont fontWithName:KAYXJFontName size:14];
    // Change the search bar placeholder text color
    [searchField setValue:_YXJ_searchBarPlaceholderColor forKeyPath:@"_placeholderLabel.textColor"];
    [self addSubview:_searchBar];
}
/*!
 *  添加一个取消按钮到View上
 */
-(void)creatCancelButton{
    float orginX = self.frame.size.width - 50;
    UIButton * cancelBtn = [[UIButton alloc] initWithFrame:CGRectMake(orginX, 5, 40, self.frame.size.height-10)];
    _cancelBT = cancelBtn;
    [cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
    [cancelBtn setTitleColor:_YXJ_cancelColor forState:UIControlStateNormal];
    cancelBtn.titleLabel.font = [UIFont fontWithName:KAYXJFontName size:14];
    [cancelBtn addTarget:self action:@selector(cancelSearchTouchAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:cancelBtn];
    cancelBtn.hidden = YES;
}
-(void)cancelSearchTouchAction{
    YXJ_cancelBTClickedBlock cancelBTClickedBlock = (YXJ_cancelBTClickedBlock)objc_getAssociatedObject(_searchBar, &YXJ_cancelBTClickedBlockKey);
    if (cancelBTClickedBlock) {
        cancelBTClickedBlock(_searchBar);
        _searchBar.frame = CGRectMake(10, (self.frame.size.height-_YXJ_searchBarHeight)/2, self.frame.size.width-20, _YXJ_searchBarHeight);
        _cancelBT.hidden = YES;
        [_searchBar resignFirstResponder];
    }
}
/** 取消按钮点击 */
-(void)YXJ_cancelBTClickedBlock:(YXJ_cancelBTClickedBlock)cancelBTClickedBlock{
    objc_setAssociatedObject(_searchBar, &YXJ_cancelBTClickedBlockKey, cancelBTClickedBlock, OBJC_ASSOCIATION_COPY);
}

#pragma mark --- 代理转为方法调用
/** 开始输入 */
-(void)YXJ_SearchBarTextDidBeginEditingBlock:(YXJ_SearchBarTextDidBeginEditingBlock)beginEditingBlock{
    objc_setAssociatedObject(_searchBar, &YXJ_SearchBarTextDidBeginEditingBlockKey, beginEditingBlock, OBJC_ASSOCIATION_COPY);
}

/** 输入文字变化 */
-(void)YXJ_SearchBarTextDidChangeBlock:(YXJ_SearchBarTextDidChangeBlock)textDidChangeBlock{
    objc_setAssociatedObject(_searchBar, &YXJ_SearchBarTextDidChangeBlockKey, textDidChangeBlock, OBJC_ASSOCIATION_COPY);
}

/** 结束输入 */
-(void)YXJ_SearchBarTextDidEndEditingBlock:(YXJ_SearchBarTextDidEndEditingBlock)endEditingBlock{
    objc_setAssociatedObject(_searchBar, &YXJ_SearchBarTextDidEndEditingBlockKey, endEditingBlock, OBJC_ASSOCIATION_COPY);
}

/** 点击键盘搜索 */
-(void)YXJ_SearchBarSearchButtonClickedBlock:(YXJ_searchBarSearchButtonClickedBlock)searchButtonClickedBlock{
    objc_setAssociatedObject(_searchBar, &YXJ_SearchBarSearchButtonClickedBlockKey, searchButtonClickedBlock, OBJC_ASSOCIATION_COPY);
}

#pragma mark --- UISearchBarDelegate
- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar{
    return YES;
}
- (BOOL)searchBarShouldEndEditing:(UISearchBar *)searchBar{
    return YES;
}
#pragma mark --- 键盘开始输入
- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
    YXJ_SearchBarTextDidBeginEditingBlock beginEditingBlock = (YXJ_SearchBarTextDidBeginEditingBlock)objc_getAssociatedObject(searchBar, &YXJ_SearchBarTextDidBeginEditingBlockKey);
    if (beginEditingBlock) {
        beginEditingBlock(searchBar);
        _searchBar.frame = CGRectMake(10, (self.frame.size.height-_YXJ_searchBarHeight)/2, self.frame.size.width-60, _YXJ_searchBarHeight);
        _cancelBT.hidden = NO;
    }
}
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    YXJ_SearchBarTextDidChangeBlock textDidChangeBlock = (YXJ_SearchBarTextDidChangeBlock)objc_getAssociatedObject(searchBar, &YXJ_SearchBarTextDidChangeBlockKey);
    if (textDidChangeBlock) {
        textDidChangeBlock(searchBar,searchText);
        _searchBar.frame = CGRectMake(10, (self.frame.size.height-_YXJ_searchBarHeight)/2, self.frame.size.width-60, _YXJ_searchBarHeight);
        _cancelBT.hidden = NO;
    }
}
- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar{
    YXJ_SearchBarTextDidEndEditingBlock endEditingBlock = (YXJ_SearchBarTextDidEndEditingBlock)objc_getAssociatedObject(searchBar, &YXJ_SearchBarTextDidEndEditingBlockKey);
    if (endEditingBlock) {
        endEditingBlock(searchBar);
        _searchBar.frame = CGRectMake(10, (self.frame.size.height-_YXJ_searchBarHeight)/2, self.frame.size.width-20, _YXJ_searchBarHeight);
        _cancelBT.hidden = YES;
    }
}
//点击键盘搜索
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    YXJ_searchBarSearchButtonClickedBlock searchButtonClickedBlock = (YXJ_searchBarSearchButtonClickedBlock)objc_getAssociatedObject(searchBar, &YXJ_SearchBarSearchButtonClickedBlockKey);
    if (searchButtonClickedBlock) {
        searchButtonClickedBlock(searchBar);
        _searchBar.frame = CGRectMake(10, (self.frame.size.height-_YXJ_searchBarHeight)/2, self.frame.size.width-60, _YXJ_searchBarHeight);
        _cancelBT.hidden = NO;
    }
}

- (BOOL)searchBar:(UISearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    return YES;
}

#pragma mark --- 重写相关属性的set方法
-(void)setYXJ_searchBarPlaceholder:(NSString *)YXJ_searchBarPlaceholder{
    _YXJ_searchBarPlaceholder = YXJ_searchBarPlaceholder;
    _searchBar.placeholder = YXJ_searchBarPlaceholder;
}
-(void)setYXJ_searchBarPlaceholderColor:(UIColor *)YXJ_searchBarPlaceholderColor{
    _YXJ_searchBarPlaceholderColor = YXJ_searchBarPlaceholderColor;
    [_searchField setValue:YXJ_searchBarPlaceholderColor forKeyPath:@"_placeholderLabel.textColor"];
}

-(void)setYXJ_searchBarHeight:(CGFloat)YXJ_searchBarHeight{
    _YXJ_searchBarHeight = YXJ_searchBarHeight;
    _searchBar.frame = CGRectMake(0, (self.frame.size.height-YXJ_searchBarHeight)/2, self.frame.size.width-60, YXJ_searchBarHeight);
}
-(void)setYXJ_searchBarTextColor:(UIColor *)YXJ_searchBarTextColor{
    _YXJ_searchBarTextColor = YXJ_searchBarTextColor;
    _searchField.textColor = YXJ_searchBarTextColor;
}
-(void)setYXJ_cancelColor:(UIColor *)YXJ_cancelColor{
    _YXJ_cancelColor = YXJ_cancelColor;
    [_cancelBT setTitleColor:YXJ_cancelColor forState:UIControlStateNormal];
}
-(void)setYXJ_backgroundColor:(UIColor *)YXJ_backgroundColor{
    _searchBar.barTintColor = YXJ_backgroundColor;
    _searchField.backgroundColor = YXJ_backgroundColor;
}

@end
