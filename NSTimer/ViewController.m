//
//  ViewController.m
//  NSTimer
//
//  Created by 张东 on 16/4/19.
//  Copyright © 2016年 __Nature__. All rights reserved.
//

#import "ViewController.h"
#import "TestTimerViewController.h"
//typedef <#returnType#>(^<#name#>)(<#arguments#>);

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
   __block int i = 1;
    
    NSLog(@"%@", ^(){ i = 2;});
    
    NSMutableArray *arr1 = [NSMutableArray array];
    NSMutableArray *arr2 = [NSMutableArray array];
    
    [arr1 addObject:arr2];
    [arr2 addObject:arr1];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}
- (IBAction)gotoTimerVC:(id)sender {
    
    TestTimerViewController *vc = [[TestTimerViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
