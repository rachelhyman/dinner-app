//
//  RHFridgeViewControllerSpec.m
//  DinnerApp
//
//  Created by Rachel Hyman on 5/23/14.
//  Copyright (c) 2014 Rachel Hyman. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "RHFridgeViewController.h"

@interface RHFridgeViewController (Expose)

@property (nonatomic, strong) IBOutlet UITableView *ingredientsTableView;

@end

SPEC_BEGIN(RHFridgeViewControllerSpec)
    describe(@"RHFridgeViewController", ^{
        
        __block RHFridgeViewController *fridgeVC;
        beforeEach(^{
            fridgeVC = [[RHFridgeViewController alloc] init];
        });
        
        context(@"Set up recipes and ingredients", ^{
            
            it(@"has an array for ingredients", ^{
                [fridgeVC viewDidLoad];
                [[fridgeVC.ingredientsArray shouldNot] beNil];
            });
            
            it(@"puts the ingredients plist in its ingredient array", ^{
                [fridgeVC viewWillAppear:YES];
                [fridgeVC.ingredientsArray[0] isKindOfClass:[NSDictionary class]];
            });
            
            it(@"has an array for recipes", ^{
                [fridgeVC viewDidLoad];
                [[fridgeVC.recipesArray shouldNot] beNil];
            });
            
            it(@"puts the recipes plist in its ingredient array", ^{
                [fridgeVC viewWillAppear:YES];
                [fridgeVC.recipesArray[0] isKindOfClass:[NSDictionary class]];
            });
        });
        
        context(@"", ^{
            it(@"has an ingredients table view", ^{
                [fridgeVC viewDidLoad];
                [[fridgeVC.ingredientsTableView shouldNot] beNil];
               });
        });
        
        context(@"Displaying list of protein ingredients", ^{
            
        });

    });

SPEC_END
