//
//  ViewController.m
//  核心动画
//
//  Created by yanqing on 2017/4/11.
//  Copyright © 2017年 zj. All rights reserved.
//

#import "ViewController.h"
#import "ZJViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *layerView;
@property (weak, nonatomic) IBOutlet UIView *pencilone;
@property (weak, nonatomic) IBOutlet UIView *penciltwo;
@property (weak, nonatomic) IBOutlet UIView *pencilthree;
@property (weak, nonatomic) IBOutlet UIView *pencilfrou;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
      //create sublayer
    //CALayer *blueLayer = [CALayer layer];
    //blueLayer.frame = CGRectMake(50.0f, 50.0f, 100.0f, 100.0f);
    //blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    ////add it to our view
    //[self.layerView.layer addSublayer:blueLayer];
    
  //如果contentsScale设置为1.0,将会以每个点1个像素绘制图片,如果设置为2.0,则会以每个点2个像素绘制图片,这就是Retina屏幕
    
     UIImage * image = [UIImage imageNamed:@"16DF03F45563B770589882029F78272C.jpg"];
    //self.layerView.layer.contents = (__bridge id)image.CGImage;
     //self.layerView.layer.contentsGravity = kCAGravityCenter;
      //self.layerView.layer.contentsScale =  2.0;
    
    /**
     *  retina屏幕设置
     */
    // UIImage *image = [UIImage imageNamed:@"Snowman.png"]; //add it directly to our view's layer
    self.layerView.layer.contents = (__bridge id)image.CGImage; //center the image
    self.layerView.layer.contentsGravity = kCAGravityCenter;
    
    //set the contentsScale to match image
    self.layerView.layer.contentsScale = [UIScreen mainScreen].scale;
         // Do any additional setup after loading the view, typically from a nib.
    
    /**
     *  makeToBounds
     *
     *  @return
     */
    
    
    /*
     *contentsRect
     *   具有图片拼合的功能
     */
    self.layerView.layer.contentsRect = CGRectMake(0, 0, 1, 1);
    
     //拼合图片
     //1.创建一个图表
    
    //2.在app中载入
    [self addSpriteImage:image withContentRect:CGRectMake(0, 0, 0.5, 0.5) toLayer:self.pencilone.layer];
    //set cone sprite
    [self addSpriteImage:image withContentRect:CGRectMake(0.5, 0, 0.5, 0.5) toLayer:self.penciltwo.layer];
    //set anchor sprite
    [self addSpriteImage:image withContentRect:CGRectMake(0, 0.5, 0.5, 0.5) toLayer:self.pencilthree.layer];
    //set spaceship sprite
    [self addSpriteImage:image withContentRect:CGRectMake(0.5, 0.5, 0.5, 0.5) toLayer:self.pencilfrou.layer];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    ZJViewController *vc = [[ZJViewController alloc]initWithNibName:NSStringFromClass([ZJViewController class]) bundle:nil];
    
    [self presentViewController:vc animated:YES completion:nil];
    
}

 - (void)addSpriteImage:(UIImage *)image withContentRect:(CGRect)rect toLayer:(CALayer *)layer //set image”
{
    layer.contents = (__bridge id)image.CGImage;
    
    //scale contents to fit
    layer.contentsGravity = kCAGravityResizeAspectFill;
    
    //set contentsRect
    layer.contentsRect = rect;
}


/**
 *  UIView -->clipsToBounds
 *  CAYlayer -->masksToBounds
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
