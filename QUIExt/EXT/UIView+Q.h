//
//  UIView+Q.h
//  QUIExt
//
//  Created by Quua on 2020/2/17.
//  Copyright © 2020 Quua. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN


@interface UIView (Q)

///添加内容
//格式1字符串、q_*n+数量/q_view_*h/q_*kf
//格式2数组、[格式1]
-(void)q_addSubitems:(id)item;

/// 根据名字获取元素
/// @param name 通过 数组 q_*k+下标生成 单个直接用q_view_*h/或者
-(UIView *)q_subkey:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
