//
//  UIView+Button.h
//  QUIExt
//
//  Created by Quua on 2020/2/18.
//  Copyright © 2020 Quua. All rights reserved.
//

#import <UIKit/UIKit.h>
///Block
typedef void (^qb_button_Block)(void);

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Button)

///设置文字
-(void)qb_settitle:(NSString *)title State:(UIControlState)state;

///设置颜色
-(void)qb_setcolor:(UIColor *)color State:(UIControlState)state;

///设置图片
-(void)qb_seticon:(NSString *)icon State:(UIControlState)state;

///设置背景图片
-(void)qb_setbgicon:(NSString *)icon State:(UIControlState)state;

///点击
- (void)qb_tap:(qb_button_Block)action;

///点击
- (void)qb_addTarget:(id)target action:(SEL)action;

///点击
- (void)qb_addTarget:(id)target action:(SEL)action events:(UIControlEvents)events;

@end

NS_ASSUME_NONNULL_END
