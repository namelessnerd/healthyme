//
//  HomeTabViewController.m
//  CarePlanApp
//
//  Created by Karthik Gomadam on 8/1/13.
//  Copyright (c) 2013 Accenture. All rights reserved.
//

#import "HomeTabViewController.h"

@interface HomeTabViewController ()

@end

@implementation HomeTabViewController

@synthesize homeTabTopBar, chartContainerView;
NSMutableArray * values;
NSMutableArray * times;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UIImage* image3 = [UIImage imageNamed:@"top_left.png"];
        CGRect frameimg = CGRectMake(0, 0, image3.size.width, image3.size.height);
        UIButton *someButton = [[UIButton alloc] initWithFrame:frameimg];
        [someButton setBackgroundImage:image3 forState:UIControlStateNormal];
        [someButton addTarget:self action:@selector(backToMenu:)
             forControlEvents:UIControlEventTouchUpInside];
        [someButton setShowsTouchWhenHighlighted:YES];
        UIBarButtonItem *mailbutton =[[UIBarButtonItem alloc] initWithCustomView:someButton];
        self.navigationItem.leftBarButtonItem=mailbutton;
        // Custom initialization
    }
    return self;
}

-(void) printHeight{
    NSLog(@"%f", CGRectGetHeight(self.chartContainerView.bounds));
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    

    
    CGRect frame = CGRectMake(5.0,5.0, 310,305);
    
    
    values= [[NSMutableArray alloc]initWithObjects:[NSNumber numberWithDouble:52.0], [NSNumber numberWithDouble:57.0],[NSNumber numberWithDouble:65.4], [NSNumber numberWithDouble:80.0], [NSNumber numberWithDouble:89.0], [NSNumber numberWithDouble:82.0], [NSNumber numberWithDouble:84.0],  nil];
    
    
    times= [[NSMutableArray alloc]initWithObjects:@"Wake Up", @"Breakfast",@"Lunch", @"Evening",@"Dinner",nil];
    

    // Add the chart to the view controller

    [self printHeight];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) backToMenu:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
