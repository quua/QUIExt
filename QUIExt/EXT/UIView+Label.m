//
//  UIView+Label.m
//  QUIExt
//
//  Created by Quua on 2020/2/18.
//  Copyright © 2020 Quua. All rights reserved.
//

#import "UIView+Label.h"

@implementation UIView (Label)

- (NSString *)ql_text
{
    if ([self isKindOfClass:UILabel.class])
    {
        return  [(UILabel *)self text];
    }
    return nil;
}

- (void)setQl_text:(NSString *)ql_text
{
    if ([self isKindOfClass:UILabel.class])
    {
        [(UILabel *)self setText:ql_text];
    }
}

- (int)ql_line
{
    if ([self isKindOfClass:UILabel.class])
    {
        return  (int)[(UILabel *)self numberOfLines];
    }
    return 0;
}

- (void)setQl_line:(int)ql_line
{
    if ([self isKindOfClass:UILabel.class])
    {
        [(UILabel *)self setNumberOfLines:ql_line];
    }
}


- (UIColor *)ql_color
{
    if ([self isKindOfClass:UILabel.class])
    {
        return [(UILabel *)self textColor];
    }
    return nil;
}

- (void)setQl_color:(UIColor *)ql_color
{
    if ([self isKindOfClass:UILabel.class])
    {
        [(UILabel *)self setTextColor:ql_color];
    }
}

- (UIFont *)ql_font
{
    if ([self isKindOfClass:UILabel.class])
    {
        return [(UILabel *)self font];
    }
    return nil;
}

- (void)setQl_font:(UIFont *)ql_font
{
    if ([self isKindOfClass:UILabel.class])
    {
        [(UILabel *)self setQl_font:ql_font];
    }
}

- (NSTextAlignment)ql_alignment
{
    if ([self isKindOfClass:UILabel.class])
    {
        return [(UILabel *)self textAlignment];
    }
    return NSTextAlignmentLeft;
}

- (void)setQl_alignment:(NSTextAlignment)ql_alignment
{
    if ([self isKindOfClass:UILabel.class])
    {
        return [(UILabel *)self setTextAlignment:ql_alignment];
    }
}

- (NSAttributedString *)ql_att
{
    if ([self isKindOfClass:UILabel.class]) {
        return [(UILabel *)self attributedText];
    }
    return nil;
}

- (void)setQl_att:(NSAttributedString *)ql_att
{
    if ([self isKindOfClass:UILabel.class]) {
        return [(UILabel *)self setQl_att:ql_att];
    }
}



@end
