//
//  stopWatchWindowController.m
//  HEROES StopWatch
//
//  Created by Steven Christe on 9/4/13.
//  Copyright (c) 2013 Steven Christe NASA GSFC. All rights reserved.
//

#import "stopWatchWindowController.h"

@interface stopWatchWindowController ()

@end

@implementation stopWatchWindowController

@synthesize updateTimer;
@synthesize timeDisplay;
@synthesize myTimer;

- (id)init
{
    self=[super initWithWindowNibName:@"stopWatchWindowController"];
    if(self)
    {
        //perform any initializations
    }
    return self;
}

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        self.myTimer = [[timerTimer alloc] init];
        self.updateTimer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateDisplays) userInfo:nil repeats:YES];
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
}

- (IBAction)StartTimer:(NSButton *)sender {
    [self.myTimer start];
}

- (IBAction)StopTimer:(NSButton *)sender {
    [self.myTimer stop];
}

- (IBAction)ResetTimer:(NSButton *)sender {
    [self.myTimer reset];
}

- (void) updateDisplays{
    [self.myTimer updateTimer];
    [self.timeDisplay setStringValue:[NSString stringWithFormat:@"%02lu:%02lu:%02lu", [self.myTimer getHours], [self.myTimer getMinutes], (unsigned long)[self.myTimer getSeconds]]];
}

@end
