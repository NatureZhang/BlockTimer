//
//  NSTimer+TimerBlockSupport.h
//  NSTimer
//
//  Created by 张东 on 16/4/19.
//  Copyright © 2016年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (TimerBlockSupport)

+ (NSTimer *)nat_scheduledTimerWithTimeInterval:(NSTimeInterval)ti actionBlock:(void (^)())actionBlock repeats:(BOOL)yesOrNo;

@end
