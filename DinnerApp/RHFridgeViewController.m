//
//  RHFridgeViewController.m
//  DinnerApp
//
//  Created by Rachel Hyman on 5/23/14.
//  Copyright (c) 2014 Rachel Hyman. All rights reserved.
//

#import "RHFridgeViewController.h"

@interface RHFridgeViewController ()

@property (nonatomic, strong) IBOutlet UITableView *ingredientsTableView;

@end

@implementation RHFridgeViewController

#pragma mark - Accessor methods

- (id)init {
    self = [super initWithNibName:@"RHFridgeViewController" bundle:nil];
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    return [self init];
}

- (NSMutableArray *)ingredientsArray
{
    if (_ingredientsArray == nil) {
        _ingredientsArray = [[NSMutableArray alloc] init];
    }
    return _ingredientsArray;
}

- (NSMutableArray *)recipesArray
{
    if (_recipesArray == nil) {
        _recipesArray = [[NSMutableArray alloc] init];
    }
    return  _recipesArray;
}

#pragma mark - Setup methods 

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    self.ingredientsArray = [[NSMutableArray alloc] initWithContentsOfFile:[self documentPathForPListWithName:@"Ingredients"]];
    self.recipesArray = [[NSMutableArray alloc] initWithContentsOfFile:[self documentPathForPListWithName:@"Recipes"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)documentPathForPListWithName:(NSString *)name {
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:name ofType:@"plist"];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, YES, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *documentPath = [documentsDirectory stringByAppendingPathComponent:[name stringByAppendingString:@".plist"]];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:documentPath]) {
        [[NSFileManager defaultManager] copyItemAtPath:bundlePath toPath:documentPath error:nil];
    }
    
    return documentPath;
}

@end
