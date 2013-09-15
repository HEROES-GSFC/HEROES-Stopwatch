//
//  timerTimer.m
//  HEROES StopWatch
//
//  Created by Steven Christe on 9/2/13.
//  Copyright (c) 2013 Steven Christe NASA GSFC. All rights reserved.
//

#import "timerTimer.h"

@interface timerTimer()
@property (nonatomic) NSUInteger hours;
@property (nonatomic) NSUInteger minutes;
@property (nonatomic) NSUInteger seconds;
@property (nonatomic) NSUInteger storedSeconds;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic) BOOL isON;
@end

@implementation timerTimer

@synthesize hours = _hours;
@synthesize minutes = _minutes;
@synthesize seconds = _seconds;
@synthesize storedSeconds = _storedSeconds;
@synthesize startTime = _startTime;

- (id)init{
    if ( self = [super init] ) {
        self.storedSeconds = 0;
        self.minutes = 0;
        self.hours = 0;
        self.seconds = 0;
    }
    return self;
}

- (void)start{
    if (!self.isON) {
        self.isON = TRUE;
        self.startTime = [NSDate date];
    }
}

- (void)stop{
    if (self.isON) {
        self.isON = FALSE;
        self.storedSeconds += [[NSDate date] timeIntervalSinceDate:self.startTime];
    }
}

- (void)reset{
    self.storedSeconds = 0;
    self.startTime = [NSDate date];
}

- (void)updateTimer {
    NSUInteger seconds = self.storedSeconds;
    if (self.isON) {
        seconds += [[NSDate date] timeIntervalSinceDate:self.startTime];
    }
    self.hours = floor(seconds / (60. * 60.));
    self.minutes = floor(seconds/60.) -  self.hours * 60;
    self.seconds = seconds - self.hours * 60 * 60 - self.minutes * 60;
}

- (NSUInteger) getSeconds{
    return self.seconds;
}

- (NSUInteger) getMinutes{
    return self.minutes;
}

- (NSUInteger) getHours{
    return self.hours;
}


@end
