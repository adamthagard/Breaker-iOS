//
//  TodayViewController.h
//  BreakerWidget
//
//  Created by Adam Thagard on 2015-07-31.
//  Copyright (c) 2015 WestSyde. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SparkCoreCommunicator.h"

@interface TodayViewController : UIViewController{
    
    IBOutlet UIButton *onButton;
    IBOutlet UIButton *offButton;
}

@property (strong,nonatomic) SparkCoreCommunicator *communicator;

-(IBAction)acOn:(id)sender;
-(IBAction)acOff:(id)sender;

@end
