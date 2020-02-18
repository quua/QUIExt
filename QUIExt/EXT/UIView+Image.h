//
//  UIView+Image.h
//  QUIExt
//
//  Created by Quua on 2020/2/18.
//  Copyright © 2020 Quua. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Image)

///获取图片
@property(nonatomic,readonly)UIImage * qi_img;
///设置图片
@property(nonatomic)NSString * qi_icon;
///填充方式
@property(nonatomic)UIViewContentMode qi_mode;

@end

NS_ASSUME_NONNULL_END
