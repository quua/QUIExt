//
//  TempViewController.m
//  QUIExt
//
//  Created by Quua on 2020/2/18.
//  Copyright © 2020 Quua. All rights reserved.
//

#import "TempViewController.h"
#import "QExtHead.h"

@interface TempViewController ()

@end

@implementation TempViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    CGRect mainr = UIScreen.mainScreen.bounds;
    
    UIView * subView = UIView.new;
    subView.frame = CGRectMake(20, 70, mainr.size.width-40, mainr.size.height-140);
    subView.backgroundColor = [self randcolor];
    [self.view addSubview:subView];
    
    [subView q_addSubitems:@[q_view_vh , q_view_ih ,  q_view_lh , q_view_bh]];
    
    CGRect sr = subView.bounds;
    CGFloat mh = sr.size.height/4;
    [subView q_subkey:q_view_vh].frame = CGRectMake(0, 0, sr.size.width, mh);
    [subView q_subkey:q_view_ih].frame = CGRectMake(0, mh, sr.size.width, mh);
    [subView q_subkey:q_view_lh].frame = CGRectMake(0, mh*2, sr.size.width, mh);
    [subView q_subkey:q_view_bh].frame = CGRectMake(0, mh*3, sr.size.width, mh);
    
    [subView q_subkey:q_view_vh].backgroundColor = [self randcolor];
    [subView q_subkey:q_view_ih].qi_icon = @"icon.jpg";
    [subView q_subkey:q_view_ih].qi_mode = UIViewContentModeScaleAspectFit;
    
    [subView q_subkey:q_view_lh].ql_text = @"文字居中";
    [subView q_subkey:q_view_lh].ql_alignment = NSTextAlignmentCenter;
    
    [[subView q_subkey:q_view_bh] qb_settitle:@"按钮" State:0];
    [[subView q_subkey:q_view_bh] qb_setcolor:[self randcolor] State:UIControlStateHighlighted];
    
}

-(UIColor *)randcolor
{
    return [UIColor colorWithRed:(rand()%255)/255. green:(rand()%255)/255. blue:(rand()%255)/255. alpha:1];
}

@end
