//
//  TodayViewController.m
//  BreakerWidget
//
//  Created by Adam Thagard on 2015-07-31.
//  Copyright (c) 2015 WestSyde. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.communicator = [[SparkCoreCommunicator alloc] init];
    
//    self.preferredContentSize = CGSizeMake(0, 222);
    onButton.backgroundColor = [UIColor colorWithRed:0.0/255.0 green:122.0/255.0 blue:255.0/255.0 alpha:0.15];
    offButton.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:51.0/255.0 blue:51.0/255.0 alpha:0.15];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)margins
{
    margins.bottom = 0.0;
    margins.left = 0.0;
    margins.top = 0.0;
    margins.right = 0.0;
    return margins;
}

-(IBAction)acOff:(id)sender{
    NSLog(@"widget: ac off");
    
    [self.communicator acOff];

}


-(IBAction)acOn:(id)sender{
    NSLog(@"widget: ac on");

    [self.communicator acOn];

}

@end
