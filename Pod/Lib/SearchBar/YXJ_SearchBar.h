//
//  YXJ_SearchBar.h
//  MySetsDemo
//
//  Created by YXJ on 15/12/22.
//  Copyright © 2015年 YXJ. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^YXJ_SearchBarTextDidBeginEditingBlock)(UISearchBar *searchBar);
typedef void (^YXJ_SearchBarTextDidChangeBlock)(UISearchBar *searchBar,NSString *searchText);
typedef void (^YXJ_SearchBarTextDidEndEditingBlock)(UISearchBar *searchBar);
typedef void (^YXJ_searchBarSearchButtonClickedBlock)(UISearchBar *searchBar);
typedef void (^YXJ_cancelBTClickedBlock)(UISearchBar *searchBar);

@interface YXJ_SearchBar : UIView

@property (nonatomic,copy) NSString *YXJ_searchBarPlaceholder;      /**< 占位符字符串 */
@property (nonatomic,strong) UIColor *YXJ_searchBarPlaceholderColor;/**< 占位符字符串颜色 */
@property (nonatomic,assign) CGFloat YXJ_searchBarHeight;           /**< searchBar高 */
@property (nonatomic,strong) UIColor *YXJ_searchBarTextColor;       /**< 搜索内容字符串颜色 */
@property (nonatomic,strong) UIColor *YXJ_cancelColor;              /**< "取消"文字颜色 */
@property (nonatomic,strong) UIColor *YXJ_backgroundColor;          /**< 背景颜色 */

/** 开始输入 */
-(void)YXJ_SearchBarTextDidBeginEditingBlock:(YXJ_SearchBarTextDidBeginEditingBlock)beginEditingBlock;

/** 输入文字变化 */
-(void)YXJ_SearchBarTextDidChangeBlock:(YXJ_SearchBarTextDidChangeBlock)textDidChangeBlock;

/** 结束输入 */
-(void)YXJ_SearchBarTextDidEndEditingBlock:(YXJ_SearchBarTextDidEndEditingBlock)endEditingBlock;

/** 点击键盘搜索 */
-(void)YXJ_SearchBarSearchButtonClickedBlock:(YXJ_searchBarSearchButtonClickedBlock)searchButtonClickedBlock;

/** 取消按钮点击 */
-(void)YXJ_cancelBTClickedBlock:(YXJ_cancelBTClickedBlock)cancelBTClickedBlock;


@end
