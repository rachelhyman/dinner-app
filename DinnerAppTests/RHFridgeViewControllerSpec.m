//
//  RHFridgeViewControllerSpec.m
//  DinnerApp
//
//  Created by Rachel Hyman on 5/23/14.
//  Copyright (c) 2014 Rachel Hyman. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "RHFridgeViewController.h"


SPEC_BEGIN(RHFridgeViewControllerSpec)
    describe(@"RHFridgeViewController", ^{
        __block RHFridgeViewController *fridgeVC;
        beforeEach(^{
            fridgeVC = [[RHFridgeViewController alloc] init];
        });
        
        it(@"has an array for ingredients", ^{
            [fridgeVC viewDidLoad];
            [[fridgeVC.ingredientsArray shouldNot] beNil];
        });
        
        it(@"puts the ingredients plist in its ingredient array", ^{
            [fridgeVC viewWillAppear:YES];
            [fridgeVC.ingredientsArray[0] isKindOfClass:[NSDictionary class]];
        });
    });

SPEC_END
