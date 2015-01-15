//
//  UIView+UIView_MBRotation.m
//  MBLoadingView
//
//  Created by Mitul_B on 12/01/15.
//  Copyright (c) 2015 Mitul_B. All rights reserved.
//

#import "UIView+UIView_MBRotation.h"
#import <QuartzCore/QuartzCore.h>


@implementation UIView (UIView_MBRotation)


-(void)rotateWithDuration:(CGFloat)duration repeatCount:(CGFloat)repeatCount timingMode:(enum rotateTimingMode)mode
{
    CAKeyframeAnimation *gAnimation = [CAKeyframeAnimation animation];
    gAnimation.values = [NSArray arrayWithObjects:
                         [NSValue valueWithCATransform3D:CATransform3DMakeRotation(0, 0, 1, 0)],
                         [NSValue valueWithCATransform3D:CATransform3DMakeRotation(3.13, 0, 1, 0)],
                         nil];
    gAnimation.cumulative = YES;
    gAnimation.duration = duration;
    gAnimation.repeatCount = INFINITY;
    
    if(mode == rotateTimingModeEaseInEaseOut){
        gAnimation.timingFunctions =
        [NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut], nil];
    }
    [self.layer addAnimation:gAnimation forKey:@"transform"];
}
-(void)rotateWithDuration:(CGFloat)duration timingMode:(enum rotateTimingMode)mode
{
    [self rotateWithDuration:duration repeatCount:0 timingMode:mode];
}

@end
