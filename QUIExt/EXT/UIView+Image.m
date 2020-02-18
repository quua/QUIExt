//
//  UIView+Image.m
//  QUIExt
//
//  Created by Quua on 2020/2/18.
//  Copyright © 2020 Quua. All rights reserved.
//

#import "UIView+Image.h"

@implementation UIView (Image)

- (UIImage *)qi_img
{
    if ([self isKindOfClass:UIImageView.class]) {
        return [(UIImageView *)self image];
    }
    return nil;
}

- (NSString *)qi_icon
{
    return @"xxx";
}

- (void)setQi_icon:(NSString *)qi_icon
{
    if ([self isKindOfClass:UIImageView.class]) {
        [(UIImageView *)self setImage:[UIImage imageNamed:qi_icon]];
    }
}

- (UIViewContentMode)qi_mode
{
    if ([self isKindOfClass:UIImageView.class]) {
        return [(UIImageView *)self contentMode];
    }
    return UIViewContentModeScaleToFill;
}

- (void)setQi_mode:(UIViewContentMode)qi_mode
{
    if ([self isKindOfClass:UIImageView.class]) {
        [(UIImageView *)self setContentMode:qi_mode];
    }
}

@end
