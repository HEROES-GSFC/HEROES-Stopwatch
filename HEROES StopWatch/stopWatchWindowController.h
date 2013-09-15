//
//  stopWatchWindowController.h
//  HEROES StopWatch
//
//  Created by Steven Christe on 9/4/13.
//  Copyright (c) 2013 Steven Christe NASA GSFC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "timerTimer.h"

@interface stopWatchWindowController : NSWindowController

@property (nonatomic, weak) NSTimer *updateTimer;
@property (nonatomic, strong) timerTimer *myTimer;

- (IBAction)StartTimer:(NSButton *)sender;
- (IBAction)StopTimer:(NSButton *)sender;
- (IBAction)ResetTimer:(NSButton *)sender;
@property (weak) IBOutlet NSTextField *timeDisplay;

@end
