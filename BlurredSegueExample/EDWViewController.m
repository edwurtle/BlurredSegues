//
//  EDWViewController.m
//  BlurredSegueExample
//
//  Created by Richard Mullinix on 4/23/14.
//  Copyright (c) 2014 Richard Mullinix. All rights reserved.
//

#import "EDWViewController.h"
#import "EDWBlurredUnwindSegue.h"

@interface EDWViewController ()

@end

@implementation EDWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindFromViewController:(UIStoryboardSegue *)sender
{
    
}

- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier
{
    EDWBlurredUnwindSegue *segue = [[EDWBlurredUnwindSegue alloc] initWithIdentifier:identifier source:fromViewController destination:toViewController];
    return segue;
}

@end
