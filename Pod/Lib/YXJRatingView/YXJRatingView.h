//
//  YXJRatingView.h
//  YXJ
//
//  Created by YXJ on 15/11/4.
//  Copyright © 2015年 YXJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YXJRatingView;

@protocol YXJRatingViewDelegate <NSObject>

@optional
- (void)ratingView:(YXJRatingView *)view score:(CGFloat)score;

@end

typedef NS_ENUM(NSUInteger, RatingType) {
    INTEGER_TYPE,
    FLOAT_TYPE
};;

@interface YXJRatingView : UIView

@property (nonatomic,assign)RatingType ratingType;//评分类型，整颗星或半颗星
@property (nonatomic,assign)CGFloat score;//当前分数

@property (nonatomic,assign)id<YXJRatingViewDelegate> delegate;

@end
