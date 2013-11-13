//
//  HomeTabViewController.h
//  CarePlanApp
//
//  Created by Karthik Gomadam on 8/1/13.
//  Copyright (c) 2013 Accenture. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface HomeTabViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIToolbar *homeTabTopBar;

-(void) backToMenu:(id) sender;

@property (weak, nonatomic) IBOutlet UIView *chartContainerView;


@end
