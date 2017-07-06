//
//  TapViewController.m
//  Gestures
//
//  Created by Thiago Hissa on 2017-07-06.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    CGFloat width = 100;
    
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds)- height/2, width, height);
    
    UIView *view = [[UIView alloc] initWithFrame:frame];
    
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewPinched:)];
    
    [view addGestureRecognizer:tap];
    
}


-(void)viewPinched:(UITapGestureRecognizer*)sender{
    
    if(sender.view.backgroundColor == [UIColor whiteColor]){
    sender.view.backgroundColor = [UIColor redColor];
    }
    else{
        sender.view.backgroundColor = [UIColor whiteColor];
    }
    
   // self.view.backgroundColor = [UIColor redColor];
    
}


@end
