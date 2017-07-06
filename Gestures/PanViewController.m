//
//  PanViewController.m
//  Gestures
//
//  Created by Thiago Hissa on 2017-07-06.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

- (IBAction)whiteViewPan:(id)sender {
    UIPanGestureRecognizer *mySend = sender;
//    CGPoint locationInView = [mySend locationInView:self.view];
//    mySend.view.center = locationInView;
    
    CGPoint translationInView = [mySend translationInView:self.view];
    
    CGPoint oldCenter = mySend.view.center;
    
    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
    
    mySend.view.center = newCenter;
    
    [mySend setTranslation:CGPointZero inView:self.view];
    
    
}



@end
