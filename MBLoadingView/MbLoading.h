//
//  MbLoading.h
//  MBLoadingView
//
//  Created by Mitul_B on 12/01/15.
//  Copyright (c) 2015 Mitul_B. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define OUTER_FRAME_SIZE 80
#define IMAGE_FRAME 40
#define CIRCLE_BORDER 3


@interface MbLoading : NSObject
{
    UIView *loadingBack;
    UIView *loadingView;
    UIImageView *imgPin;
    UIView *view;
    UILabel *lblLoading;
    BOOL animating;
}

+(MbLoading *)loading;

-(void)showLoadingView;
-(void)showLoadingViewWithColor:(UIColor *)color;
-(void)hideLoadingView;


@end
