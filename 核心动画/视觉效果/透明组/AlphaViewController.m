//
//  AlphaViewController.m
//  核心动画
//
//  Created by macbook pro on 2017/6/11.
//  Copyright © 2017年 zj. All rights reserved.
//

#import "AlphaViewController.h"

@interface AlphaViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation AlphaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     // create opaque button
    UIButton *button1 = [self customButton];
    button1.center = CGPointMake(80, 150);
    [self.containerView addSubview:button1];
    
    //create translucent button
    UIButton *button2 = [self customButton];
    
    button2.center = CGPointMake(250, 150);
    button2.alpha = 0.5;
    button2.titleLabel.backgroundColor= [UIColor redColor];
    [self.containerView   addSubview:button2];
    
    //enable rasterization for the translucent button
    //iOS 8 之后 下面的代码不起作用
//    button2.layer.shouldRasterize = YES;
//    button2.layer.rasterizationScale = [UIScreen mainScreen].scale;
}
     

- (UIButton *)customButton
{
    //create button
    CGRect frame = CGRectMake(0, 0, 150, 50);
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    button.backgroundColor = [UIColor whiteColor];
    button.layer.cornerRadius = 10;
    
    //add label
    frame = CGRectMake(20, 10,  110, 30);
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = @"Hello World";
//    label.alpha = .5;
    label.backgroundColor = [UIColor redColor];
    
    label.textAlignment = NSTextAlignmentCenter;
    [button addSubview:label];
    return button;
}

  
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
