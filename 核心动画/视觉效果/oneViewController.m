//
//  oneViewController.m
//  核心动画
//
//  Created by yanqing on 2017/4/23.
//  Copyright © 2017年 zj. All rights reserved.
//

#import "oneViewController.h"

@interface oneViewController ()

@end

@implementation oneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage * image=[UIImage imageNamed:@"笔"];
    UIButton * view = [[UIButton alloc]initWithFrame:CGRectMake(20, 20, 200, 200)];
    view.backgroundColor = [UIColor redColor];
    view.layer.contents=(__bridge id)image.CGImage;
    view.layer.contentsCenter = CGRectMake(0, 0,0.75, 0.75);
    
    [self.view addSubview:view];
   
    
    UIImage * image2=[UIImage imageNamed:@"笔"];
    UIButton * view2 = [[UIButton alloc]initWithFrame:CGRectMake(20, 250, 200, 200)];
    view2.backgroundColor = [UIColor redColor];
    view2.layer.contents=(__bridge id)image2.CGImage;
// view2.layer.contentsCenter = CGRectMake(0.25, 0.25, 0.5, 0.5);
    
    [self.view addSubview:view2];

    
    
    // Do any additional setup after loading the view.
}
-(void)viewDidLayoutSubviews{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
