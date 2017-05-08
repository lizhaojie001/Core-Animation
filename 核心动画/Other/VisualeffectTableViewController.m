//
//  TableViewController.m
//  核心动画
//
//  Created by yanqing on 2017/4/23.
//  Copyright © 2017年 zj. All rights reserved.
//

#import "VisualeffectTableViewController.h"
#import "ViewController.h"
#import "oneViewController.h"
#import "twoViewController.h"
#import "threeViewController.h"
#import "fourViewController.h"
#import "maskViewController.h"
#import "ZJViewController.h"
#import "DealimageViewController.h"
@interface VisualeffectTableViewController ()
@property (nonatomic ,strong)NSArray * allVCs;
@end

@implementation VisualeffectTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChilds];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"reuseIdentifier"];
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)addChilds{
    ZJViewController *zj =[[ZJViewController alloc]initWithNibName:NSStringFromClass([ZJViewController class]) bundle:nil];
    
    oneViewController * one = [oneViewController new];
    
    twoViewController *two = [[twoViewController alloc]initWithNibName:NSStringFromClass([twoViewController class]) bundle:nil];
    
    threeViewController * three = [[threeViewController alloc]initWithNibName:NSStringFromClass([threeViewController class]) bundle:nil];
    
    fourViewController * four = [[fourViewController alloc]initWithNibName:NSStringFromClass([fourViewController class]) bundle:nil];
    
    maskViewController * mask = [[maskViewController alloc]initWithNibName:NSStringFromClass([maskViewController class]) bundle:nil];
    
    
    DealImageViewController *dealImage =[[DealImageViewController alloc]init];
    self.allVCs = @[zj,one,two,three,four,mask,dealImage];
    
    //[self addChildViewController:zj];
    //[self addChildViewController:one];
    //[self addChildViewController:two];
    //[self addChildViewController:three];
    //[self addChildViewController:four];
    
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //#warning Incomplete implementation, return the number of rows
    return self.allVCs.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    cell.textLabel.text =
    NSStringFromClass( [self.allVCs[indexPath.row] class] );
    // Configure the cell...
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController * vc  = self.allVCs[indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
