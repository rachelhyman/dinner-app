//
//  RHAppDelegateSpec.m
//  DinnerApp
//
//  Created by Rachel Hyman on 5/23/14.
//  Copyright (c) 2014 Rachel Hyman. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "RHAppDelegate.h"
#import "RHFridgeViewController.h"

SPEC_BEGIN(RHAppDelegateSpec)

describe(@"RHAppDelegate", ^{
    
    it(@"shows RHFridgeViewController", ^{
        RHAppDelegate *appDelegate = [[RHAppDelegate alloc] init];
        
        [appDelegate application:nil didFinishLaunchingWithOptions:nil];
        [[appDelegate.window.rootViewController should] beKindOfClass:[RHFridgeViewController class]];
    });
});

SPEC_END
