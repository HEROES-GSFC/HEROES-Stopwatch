//
//  timerAppController.h
//  HEROES StopWatch
//
//  Created by Steven Christe on 9/2/13.
//  Copyright (c) 2013 Steven Christe NASA GSFC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "timerTimer.h"

@interface timerAppController : NSObject
@property (nonatomic, strong) NSMutableArray *myWindows;

- (IBAction)openNewWindow:(id)sender;

@end
