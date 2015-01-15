//
//  RootViewController.m
//  MBLoadingView
//
//  Created by Mitul_B on 12/01/15.
//  Copyright (c) 2015 Mitul_B. All rights reserved.
//

#import "RootViewController.h"
#import "MbLoading.h"


@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


- (IBAction)onClickShowLoaingView:(id)sender {
    
    [[MbLoading loading] showLoadingView];
    [self performSelector:@selector(hideLoading) withObject:nil afterDelay:5.0f];
}


-(void)hideLoading
{
    [[MbLoading loading]hideLoadingView];
}

@end
