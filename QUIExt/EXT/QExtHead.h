//
//  QExtHead.h
//  QUIExt
//
//  Created by Quua on 2020/2/17.
//  Copyright © 2020 Quua. All rights reserved.
//

#ifndef QExtHead_h
#define QExtHead_h

#import <QuartzCore/QuartzCore.h>
#import "UIView+Q.h"
#import "UIView+Label.h"
#import "UIView+Image.h"
#import "UIView+Button.h"

///  基础UIView 头部
static NSString * q_view_vh = @"q_view";
///  基础UILabel 头部
static NSString * q_view_lh = @"q_label";
///  基础UIImageView 头部
static NSString * q_view_ih = @"q_image";
///  基础UIBUtton 头部
static NSString * q_view_bh = @"q_button";

///创建view*数量
CG_INLINE NSString * q_vn(int num){
    return [q_view_vh stringByAppendingFormat:@"*%d",num];
}
///创建label*数量
CG_INLINE NSString * q_ln(int num){
    return [q_view_lh stringByAppendingFormat:@"*%d",num];
}
///创建image*数量
CG_INLINE NSString * q_in(int num){
    return [q_view_ih stringByAppendingFormat:@"*%d",num];
}
///创建button*数量
CG_INLINE NSString * q_bn(int num){
    return [q_view_bh stringByAppendingFormat:@"*%d",num];
}

/*-------------------- 通过数组的方法创建+下标 ----------------------*/
///获取View
CG_INLINE NSString * q_vk(int num){
    return [q_view_vh stringByAppendingFormat:@"_%d",num];
}
///获取Label
CG_INLINE NSString * q_lk(int num){
    return [q_view_lh stringByAppendingFormat:@"_%d",num];
}
///获取image
CG_INLINE NSString * q_ik(int num){
    return [q_view_ih stringByAppendingFormat:@"_%d",num];
}
///获取Button
CG_INLINE NSString * q_bk(int num){
    return [q_view_bh stringByAppendingFormat:@"_%d",num];
}

/*-------------------- 通过单个的方法创建+尾巴 ----------------------*/
///获取View
CG_INLINE NSString * q_vkf(NSString * foot){
    return [q_view_vh stringByAppendingFormat:@"~%@",foot];
}
///获取Label
CG_INLINE NSString * q_lkf(NSString * foot){
    return [q_view_lh stringByAppendingFormat:@"~%@",foot];
}
///获取image
CG_INLINE NSString * q_ikf(NSString * foot){
    return [q_view_ih stringByAppendingFormat:@"~%@",foot];
}
///获取Button
CG_INLINE NSString * q_bkf(NSString * foot){
    return [q_view_bh stringByAppendingFormat:@"~%@",foot];
}

///根据key创建 对应控件
CG_INLINE UIView * qv_creat(NSString * name){
    if ([name hasPrefix:q_view_lh])
    {
        return UILabel.new;
    }
    else if ([name hasPrefix:q_view_ih])
    {
        return UIImageView.new;
    }
    else if ([name hasPrefix:q_view_bh])
    {
        return UIButton.new;
    }
    else if ([name hasPrefix:q_view_vh])
    {
        return UIView.new;
    }
    return nil;
    
}

#endif /* QExtHead_h */
