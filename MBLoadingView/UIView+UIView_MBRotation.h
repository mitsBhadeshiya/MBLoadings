//
//  UIView+UIView_MBRotation.h
//  MBLoadingView
//
//  Created by Mitul_B on 12/01/15.
//  Copyright (c) 2015 Mitul_B. All rights reserved.
//

#import <UIKit/UIKit.h>

enum rotateTimingMode{
    rotateTimingModeEaseInEaseOut,
    rotateTimingModeLinear
};

@interface UIView (UIView_MBRotation)

-(void)rotateWithDuration:(CGFloat)duration repeatCount:(CGFloat)repeatCount timingMode:(enum rotateTimingMode)mode;
-(void)rotateWithDuration:(CGFloat)duration timingMode:(enum rotateTimingMode)mode;


@end
