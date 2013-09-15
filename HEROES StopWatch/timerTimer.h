//
//  timerTimer.h
//  HEROES StopWatch
//
//  Created by Steven Christe on 9/2/13.
//  Copyright (c) 2013 Steven Christe NASA GSFC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface timerTimer : NSObject

- (void)updateTimer;
- (NSUInteger) getSeconds;
- (NSUInteger) getMinutes;
- (NSUInteger) getHours;
- (void)stop;
- (void)start;
- (void)reset;

@end
