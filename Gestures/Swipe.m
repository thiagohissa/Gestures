//
//  UISwipeGestureRecognizer.m
//  Gestures
//
//  Created by Thiago Hissa on 2017-07-06.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "Swipe.h"

@interface Swipe ()
@property (weak, nonatomic) IBOutlet UIView *viewBLUE;

@end

@implementation Swipe

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)swipe:(id)sender {
    
    UISwipeGestureRecognizer *swipe = sender;
    
   
    if(swipe.state == UIGestureRecognizerStateBegan){
        CGRect customFrame = swipe.view.frame;
        int point = [swipe locationInView:self.view].x;
        customFrame.size.width = 200;
        swipe.view.frame = customFrame;
    }
    
    
}


@end
