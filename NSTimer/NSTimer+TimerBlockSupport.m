//
//  NSTimer+TimerBlockSupport.m
//  NSTimer
//
//  Created by 张东 on 16/4/19.
//  Copyright © 2016年 __Nature__. All rights reserved.
//

#import "NSTimer+TimerBlockSupport.h"

@implementation NSTimer (TimerBlockSupport)

+ (NSTimer *)nat_scheduledTimerWithTimeInterval:(NSTimeInterval)ti actionBlock:(void (^)())actionBlock repeats:(BOOL)yesOrNo {
    
    return [self scheduledTimerWithTimeInterval:ti
                                         target:self
                                       selector:@selector(blockInvoke:)
                                       userInfo:[actionBlock copy]
                                        repeats:yesOrNo];
}

+ (void)blockInvoke:(NSTimer *)timer {
    
    void (^block)() = timer.userInfo;
    
    if (block) {
        block();
    }
}
@end
