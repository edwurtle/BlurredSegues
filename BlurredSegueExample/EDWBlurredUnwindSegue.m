//
//  EDWBlurredUnwindSegue.m
//  TrueOdds
//
//  Created by Richard Mullinix on 3/29/14.
//  Copyright (c) 2014 Richard Mullinix. All rights reserved.
//

#import "EDWBlurredUnwindSegue.h"

@implementation EDWBlurredUnwindSegue

-(void)perform
{
    UIViewController *modalViewController = self.sourceViewController;
    UIViewController *parentViewController = self.destinationViewController;
    
    UIView *modalView = modalViewController.view;
    UIView *parentView = parentViewController.view;
    
    

    UIImageView *blurredImageView = [modalView.subviews objectAtIndex:0];
    
    // place parent view behind my modal view
    [modalView insertSubview:parentView atIndex:0];
    
    
    CGPoint orignalCenter = modalView.center;
    
    
    [UIView animateWithDuration:0.6 delay:0.0 usingSpringWithDamping:1.0 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         modalView.center = CGPointMake(orignalCenter.x, orignalCenter.y + modalView.frame.size.height);
                         blurredImageView.frame = CGRectMake(0, 0, modalView.frame.size.width, 0.0);
                         parentView.center = CGPointMake(orignalCenter.x, orignalCenter.y - modalView.frame.size.height);
                     }
                     completion:^(BOOL finished){
                         [blurredImageView removeFromSuperview];
                         [parentViewController dismissViewControllerAnimated:NO completion:^{}];
                     }];
}

@end
