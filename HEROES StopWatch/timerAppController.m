//
//  timerAppController.m
//  HEROES StopWatch
//
//  Created by Steven Christe on 9/2/13.
//  Copyright (c) 2013 Steven Christe NASA GSFC. All rights reserved.
//

#import "timerAppController.h"
#import "timerTimer.h"
#import "stopWatchWindowController.h"

@implementation timerAppController

@synthesize myWindows = _myWindows;

-(void) awakeFromNib{
    self.myWindows = [[NSMutableArray alloc] init];
    stopWatchWindowController *initialWindow = [[stopWatchWindowController alloc] init];
    [initialWindow showWindow:self];
    [initialWindow.window makeKeyAndOrderFront:initialWindow];
    [self.myWindows addObject: initialWindow];
    [NSApp activateIgnoringOtherApps:YES];
}

- (IBAction)openNewWindow:(id)sender {
    stopWatchWindowController *newWindow = [[stopWatchWindowController alloc] init];
    [newWindow showWindow:self];
    [self.myWindows addObject: newWindow];
}
@end
