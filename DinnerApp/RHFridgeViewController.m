//
//  RHFridgeViewController.m
//  DinnerApp
//
//  Created by Rachel Hyman on 5/23/14.
//  Copyright (c) 2014 Rachel Hyman. All rights reserved.
//

#import "RHFridgeViewController.h"

@interface RHFridgeViewController ()

@end

@implementation RHFridgeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSMutableArray *)ingredientsArray
{
    if (_ingredientsArray == nil) {
        _ingredientsArray = [[NSMutableArray alloc] init];
    }
    return _ingredientsArray;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [self convertIngredientsPList];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)convertIngredientsPList {
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Ingredients" ofType:@"plist"];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, YES, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *documentPath = [documentsDirectory stringByAppendingPathComponent:@"Ingredients.plist"];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:documentPath]) {
        [[NSFileManager defaultManager] copyItemAtPath:bundlePath toPath:documentPath error:nil];
    }
    
    self.ingredientsArray = [[NSMutableArray alloc] initWithContentsOfFile:documentPath];
}


@end
