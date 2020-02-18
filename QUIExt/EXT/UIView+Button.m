//
//  UIView+Button.m
//  QUIExt
//
//  Created by Quua on 2020/2/18.
//  Copyright © 2020 Quua. All rights reserved.
//

#import "UIView+Button.h"
#import <objc/message.h>
static const void * qb_tap_key = @"button_action_xxx";


@implementation UIView (Button)

-(void)qb_settitle:(NSString *)title State:(UIControlState)state
{
    if ([self isKindOfClass:UIButton.class]) {
        [(UIButton *)self setTitle:title forState:state];
    }
}

- (void)qb_setcolor:(UIColor *)color State:(UIControlState)state
{
    if ([self isKindOfClass:UIButton.class]) {
        [(UIButton *)self setTitleColor:color forState:state];
    }
}

- (void)qb_seticon:(NSString *)icon State:(UIControlState)state
{
    if ([self isKindOfClass:UIButton.class]) {
        [(UIButton *)self setImage:[UIImage imageNamed:icon] forState:state];
    }
}

-(void)qb_setbgicon:(NSString *)icon State:(UIControlState)state
{
    if ([self isKindOfClass:UIButton.class]) {
        [(UIButton *)self setBackgroundImage:[UIImage imageNamed:icon] forState:state];
    }
}

- (void)qb_tap:(qb_button_Block)action
{
    if ([self isKindOfClass:UIButton.class])
    {
        objc_setAssociatedObject(self, qb_tap_key, action, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [(UIButton *)self addTarget:self action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)qb_addTarget:(id)target action:(SEL)action
{
    [self qb_addTarget:target action:action events:UIControlEventTouchUpInside];
}

- (void)qb_addTarget:(id)target action:(SEL)action events:(UIControlEvents)events
{
    if ([self isKindOfClass:UIButton.class])
    {
        [(UIButton *)self addTarget:target action:action forControlEvents:events];
    }
}

-(void)action
{
    qb_button_Block block = objc_getAssociatedObject(self, qb_tap_key);
    block ? block() : nil;
}

@end
