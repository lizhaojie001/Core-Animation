//
//  maskViewController.m
//  核心动画
//
//  Created by yanqing on 2017/4/23.
//  Copyright © 2017年 zj. All rights reserved.
//

#import "maskViewController.h"

@interface maskViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIView *layerView;

@end

@implementation maskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title=@"蒙版";
    //create mask layer
    CALayer *maskLayer = [CALayer layer];
    maskLayer.frame = self.imageView.bounds;
    UIImage *maskImage = [UIImage imageNamed:@"笔.png"];
    maskLayer.contents = (__bridge id)maskImage.CGImage;
    
    //apply mask to image layer￼
    self.imageView.layer.mask = maskLayer;
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
