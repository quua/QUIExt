//
//  UIView+Label.h
//  QUIExt
//
//  Created by Quua on 2020/2/18.
//  Copyright © 2020 Quua. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Label)
///文字
@property(nonatomic)NSString * ql_text;
///行数
@property(nonatomic)int ql_line;
///对齐
@property(nonatomic)NSTextAlignment ql_alignment;
///颜色
@property(nonatomic)UIColor * ql_color;
///字体
@property(nonatomic)UIFont * ql_font;
///富文本
@property(nonatomic)NSAttributedString * ql_att;

@end

NS_ASSUME_NONNULL_END
