//
//  UIView+Q.m
//  QUIExt
//
//  Created by Quua on 2020/2/17.
//  Copyright © 2020 Quua. All rights reserved.
//

#import "UIView+Q.h"
#import <objc/message.h>
#import "QExtHead.h"
/// 所有元素的集合
static const void * sub_items_key = @"subitems_arrays";

/// 单个元素对应的名字
static const void * sub_name_key = @"subitem_name";


@implementation UIView (Q)

-(void)q_addSubitems:(id)item
{
    NSMutableArray <UIView* >* subitems  = [self items];
    
    if ([item isKindOfClass:NSString.class])
    {
        id temp = [self getWithKey:item];
        [temp isKindOfClass:UIView.class] ? [subitems addObject:temp] : [subitems addObjectsFromArray:temp];
    }
    else if ([item isKindOfClass:NSArray.class])
    {
        for (NSString * key in item)
        {
            id temp = [self getWithKey:key];
            [temp isKindOfClass:UIView.class] ? [subitems addObject:temp] : [subitems addObjectsFromArray:temp];
        }
    }
}

-(id)getWithKey:(NSString *)key
{
    if ([key containsString:@"*"])
    {
        NSArray <NSString *>* tks = [key componentsSeparatedByString:@"*"];
        NSString * rk = tks.firstObject;
        int vc = tks.lastObject.intValue;
        if (vc>0)
        {
            NSMutableArray * array = NSMutableArray.new;
            for (int i=0; i<vc; i++)
            {
                NSString * ak = [rk stringByAppendingFormat:@"_%d",i];
                [array addObject:[self getWithKey:ak]];
            }
            return array;
        }
        return nil;
    }
    else
    {
        UIView * view = qv_creat(key);
        objc_setAssociatedObject(view, sub_name_key, key, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self addSubview:view];
        return view;
    }
}

-(NSMutableArray <UIView *> *)items
{
    NSMutableArray * dict = objc_getAssociatedObject(self, sub_items_key);
    if (dict==nil)
    {
        dict = NSMutableArray.new;
        objc_setAssociatedObject(self, sub_items_key, dict, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return dict;
}

- (NSString *)q_name
{
    return objc_getAssociatedObject(self, sub_name_key);
}

- (UIView *)q_subkey:(NSString *)name
{
    NSPredicate * sp = [NSPredicate predicateWithFormat:@"q_name == %@",name];
    return [[self items] filteredArrayUsingPredicate:sp].firstObject;
}

@end
