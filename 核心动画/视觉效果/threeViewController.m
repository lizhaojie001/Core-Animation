//
//  threeViewController.m
//  核心动画
//
//  Created by yanqing on 2017/4/23.
//  Copyright © 2017年 zj. All rights reserved.
//

#import "threeViewController.h"

@interface threeViewController ()
@property (weak, nonatomic) IBOutlet UIView *shadowView;
@property (weak, nonatomic) IBOutlet UIView *layerView2;
@property (weak, nonatomic) IBOutlet UIView *layerView1;

@end

@implementation threeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"绘制阴影,不使用masksToBounds";
    
    self.layerView1.layer.cornerRadius = 20.0f;
    self.layerView2.layer.cornerRadius = 20.0f;
    
    //add a border to our layers
    self.layerView1.layer.borderWidth = 5.0f;
    self.layerView2.layer.borderWidth = 5.0f;
    
    //add a shadow to layerView1
    self.layerView1.layer.shadowOpacity = 0.5f;
    self.layerView1.layer.shadowOffset = CGSizeMake(0.0f, 5.0f);
    
    
    self.layerView1.layer.shadowRadius = 5.0f;
    
    //add same shadow to shadowView (not layerView2)
    self.shadowView.layer.shadowOpacity = 0.5f;
    self.shadowView.layer.shadowOffset = CGSizeMake(0.0f, 5.0f);
    self.shadowView.layer.shadowRadius = 5.0f;
    
    //enable clipping on the second layer
    self.layerView2.layer.masksToBounds = YES;
    
    // Do any additional setup after loading the view from its nib.
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
