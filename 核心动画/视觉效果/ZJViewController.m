//
//  ZJViewController.m
//  核心动画
//
//  Created by yanqing on 2017/4/11.
//  Copyright © 2017年 zj. All rights reserved.
//

#import "ZJViewController.h"
#import "oneViewController.h"
@interface ZJViewController ()
@property (weak, nonatomic) IBOutlet UIView *layerView;

@end

@implementation ZJViewController
- (IBAction)jump:(id)sender {
    oneViewController*one = [[oneViewController alloc]init];
    [self presentViewController:one animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"寄宿图";
    UIImage * image = [UIImage imageNamed:@"笔(3)"];
    //self.layerView.layer.contents = (__bridge id)image.CGImage; //center the image
    //self.layerView.layer.contentsGravity = kCAGravityCenter;
    
    ////set the contentsScale to match image
    self.layerView.layer.contentsScale = [UIScreen mainScreen].scale;
    
    
    [self addSpriteImage:image withContentRect:CGRectMake(0, 0, 0.5, 0.5) toLayer:self.layerView.layer];
    //set cone sprite
    [self addSpriteImage:image withContentRect:CGRectMake(0.5, 0, 0.5, 0.5) toLayer:self.layerView.layer];
    //set anchor sprite
    [self addSpriteImage:image withContentRect:CGRectMake(0, 0.5, 0.5, 0.5) toLayer:self.layerView.layer];
    //set spaceship sprite
    [self addSpriteImage:image withContentRect:CGRectMake(0.5, 0.5, 0.5, 0.5) toLayer:self.layerView.layer];
}
    


- (void)addSpriteImage:(UIImage *)image withContentRect:(CGRect)rect toLayer:(CALayer *)layer //set image”
{
    layer.contents = (__bridge id)image.CGImage;
    
    //scale contents to fit
    layer.contentsGravity = kCAGravityResizeAspect;
    
    //set contentsRect
    layer.contentsRect = rect;
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
