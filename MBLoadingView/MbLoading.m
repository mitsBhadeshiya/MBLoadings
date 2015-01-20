//
//  MbLoading.m
//  MBLoadingView
//
//  Created by Mitul_B on 12/01/15.
//  Copyright (c) 2015 Mitul_B. All rights reserved.
//

#import "MbLoading.h"
#import "AppDelegate.h"
#import "UIView+UIView_MBRotation.h"

AppDelegate *appDelegate;

@implementation MbLoading


+(MbLoading *)loading
{
    appDelegate = [UIApplication sharedApplication].delegate;
    static MbLoading *objLoading = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        objLoading = [[MbLoading alloc]init];
    });
    return objLoading;
}

-(void)showLoadingViewWithColor:(UIColor *)color
{
    CGRect screenRect = [UIScreen mainScreen].bounds;
    if (loadingBack == nil)
    {
        loadingBack = [[UIView alloc] initWithFrame:screenRect];
        loadingBack.opaque = NO;
        
        CGRect windowFrame = appDelegate.window.frame;
        
        loadingView = [[UIView alloc]initWithFrame:CGRectMake((windowFrame.size.width - OUTER_FRAME_SIZE)/2, (windowFrame.size.height -OUTER_FRAME_SIZE)/2, OUTER_FRAME_SIZE, OUTER_FRAME_SIZE)];
        loadingView.alpha =.7f;
        loadingView.backgroundColor = color;
        loadingView.layer.cornerRadius = OUTER_FRAME_SIZE/2;
        loadingView.layer.zPosition = MAXFLOAT;
        
        view = [[UIView alloc]initWithFrame:CGRectMake(1, 1, OUTER_FRAME_SIZE-2 , OUTER_FRAME_SIZE-2)];
        view.backgroundColor = [UIColor clearColor];
        view.layer.borderColor  = [UIColor whiteColor].CGColor;
        view.layer.borderWidth = CIRCLE_BORDER;
        view.layer.cornerRadius = (OUTER_FRAME_SIZE-2)/2;
        imgPin = [[UIImageView alloc]initWithFrame:CGRectMake(0 , 0 , IMAGE_FRAME ,IMAGE_FRAME)];
        imgPin.center = CGPointMake(OUTER_FRAME_SIZE/2, OUTER_FRAME_SIZE/2);
        
        [view addSubview:imgPin];
        [imgPin rotateWithDuration:2.0 timingMode:rotateTimingModeLinear];
        imgPin.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"pin"],nil];
        [imgPin startAnimating];
        
        [loadingView addSubview:view];
        [loadingBack addSubview:loadingView];
        
    }
    [appDelegate.window addSubview:loadingView];
    
    NSLog(@"SHOW LOADING..");
}


-(void)showLoadingView
{
    
    [self showLoadingViewWithColor:[UIColor blackColor]];
    
}

-(void)hideLoadingView
{
    NSLog(@"HIDE LOADING..");
    [loadingView removeFromSuperview];
    loadingView = nil;
    [view removeFromSuperview];
    view = nil;
    [lblLoading removeFromSuperview];
    lblLoading = nil;
    [imgPin removeFromSuperview];
    imgPin = nil;
    [loadingBack removeFromSuperview];
    loadingBack=nil;
    
}





@end
