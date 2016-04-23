//
//  TestTimerViewController.m
//  NSTimer
//
//  Created by 张东 on 16/4/21.
//  Copyright © 2016年 __Nature__. All rights reserved.
//

#import "TestTimerViewController.h"
#import "NSTimer+TimerBlockSupport.h"

@interface TestTimerViewController ()
{
    NSTimer *_timer;
}
@end

@implementation TestTimerViewController


- (void)dealloc {
    
    [_timer invalidate];
    _timer = nil;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self startTimer];
}

- (void)startTimer {
    
    __weak typeof(self) wSelf = self;
    _timer = [NSTimer nat_scheduledTimerWithTimeInterval:2.0 actionBlock:^{
        
        TestTimerViewController *strongSelf = wSelf;
        
        [strongSelf printfLog];
        
    } repeats:YES];
}

- (void)printfLog {
    
    NSLog(@"我在循环 -----");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
