//
//  DealImageViewController.m
//  核心动画
//
//  Created by yanqing on 2017/5/6.
//  Copyright © 2017年 zj. All rights reserved.
//

#import "DealImageViewController.h"

@interface DealImageViewController ()

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *digitViews;
@property (nonatomic, weak) NSTimer *timer;
@end

@implementation DealImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     UIImage *digits = [UIImage imageNamed:@"Digits.png"];
    
    //set up digit views
    for (UIView *view in self.digitViews) {
        //set contents
        view.layer.contents = (__bridge id)digits.CGImage;
        view.layer.contentsRect = CGRectMake(0, 0, 0.1, 1.0);
        view.layer.contentsGravity = kCAGravityResizeAspect;
        view.layer.magnificationFilter = kCAFilterNearest;
    }
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick) userInfo:nil repeats:YES];
    
    //set initial clock time
    [self tick];
    
   // 摘录来自: 钟声. “ios核心动画高级技巧”。 iBooks.
    // Do any additional setup after loading the view from its nib.
}

- (void)tick
{
    //convert time to hours, minutes and seconds
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierGregorian];
    NSUInteger units = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond
    ;
    
    NSDateComponents *components = [calendar components:units fromDate:[NSDate date]];
    
    //set hours
    [self setDigit:components.hour / 10 forView:self.digitViews[0]];
    
    
     [self setDigit:components.hour % 10 forView:self.digitViews[1]];
    
    //set minutes
    [self setDigit:components.minute / 10 forView:self.digitViews[2]];
    [self setDigit:components.minute % 10 forView:self.digitViews[3]];
    
    //set seconds
    [self setDigit:components.second / 10 forView:self.digitViews[4]];
    [self setDigit:components.second % 10 forView:self.digitViews[5]];
}
//@end”

//摘录来自: 钟声. “ios核心动画高级技巧”。 iBooks.
   // 摘录来自: 钟声. “ios核心动画高级技巧”。 iBooks.

- (void)setDigit:(NSInteger)digit forView:(UIView *)view
    {
        //adjust contentsRect to select correct digit
        view.layer.contentsRect = CGRectMake(digit * 0.1, 0, 0.1, 1.0);
    }
   
   // 摘录来自: 钟声. “ios核心动画高级技巧”。 iBooks.
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
