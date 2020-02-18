//
//  HomeViewController.m
//  QUIExt
//
//  Created by Quua on 2020/2/17.
//  Copyright © 2020 Quua. All rights reserved.
//

#import "HomeViewController.h"
#import "QExtHead.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    
    CGRect mainr = UIScreen.mainScreen.bounds;
    
    UIView * subView = UIView.new;
    subView.frame = CGRectMake(20, 70, mainr.size.width-40, mainr.size.height-140);
    subView.backgroundColor = [self randcolor];
    [self.view addSubview:subView];
    
    [subView q_addSubitems:q_vn(5)];
    [subView q_addSubitems:q_ln(5)];
    [subView q_addSubitems:q_in(5)];
    [subView q_addSubitems:q_bn(5)];
    
    CGFloat mw = subView.bounds.size.width/5;
    
    for (int i=0; i<5; i++)
    {
        [subView q_subkey:q_vk(i)].frame = CGRectMake((i%5)*mw, (i/5)*mw, mw, mw);
        [subView q_subkey:q_vk(i)].backgroundColor = [self randcolor];
    }
    
    for (int i=5; i<10; i++)
    {
        [subView q_subkey:q_lk(i-5)].frame = CGRectMake((i%5)*mw, (i/5)*mw, mw, mw);
        [subView q_subkey:q_lk(i-5)].backgroundColor = [self randcolor];
        [subView q_subkey:q_lk(i-5)].ql_text = [NSString stringWithFormat:@"%d",i];
        [subView q_subkey:q_lk(i-5)].ql_color = [self randcolor];
        [subView q_subkey:q_lk(i-5)].ql_alignment = NSTextAlignmentCenter;
    }
    
    for (int i=10; i<15; i++)
    {
        [subView q_subkey:q_ik(i-10)].frame = CGRectMake((i%5)*mw, (i/5)*mw, mw, mw);
        [subView q_subkey:q_ik(i-10)].qi_icon = @"icon.jpg";
    }
    
    for (int i=15; i<20; i++)
    {
        [subView q_subkey:q_bk(i-15)].frame = CGRectMake((i%5)*mw, (i/5)*mw, mw, mw);
        [[subView q_subkey:q_bk(i-15)] qb_settitle:[NSString stringWithFormat:@"%d",i] State:0];
        [[subView q_subkey:q_bk(i-15)] qb_tap:^{
            NSLog(@"--->%d",i);
        }];
    }
    
    [subView q_addSubitems:q_view_bh];
    [subView q_subkey:q_view_bh].frame = CGRectMake(0, mw*4, mw*5, mw);
    [subView q_subkey:q_view_bh].backgroundColor = [self randcolor];
    [[subView q_subkey:q_view_bh] qb_settitle:@"跳转" State:0];
    
    
    [[subView q_subkey:q_view_bh] qb_addTarget:self action:@selector(jump)];
    
}

-(void)jump
{
    id vc = [[NSClassFromString(@"TempViewController") alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

-(UIColor *)randcolor
{
    return [UIColor colorWithRed:(rand()%255)/255. green:(rand()%255)/255. blue:(rand()%255)/255. alpha:1];
}

@end
