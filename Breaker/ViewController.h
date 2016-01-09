//
//  ViewController.h
//  Breaker
//
//  Created by Adam Thagard on 2014-10-18.
//  Copyright (c) 2014 WestSyde. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SparkCoreCommunicator.h"

@interface ViewController : UIViewController

@property (strong,nonatomic) SparkCoreCommunicator *communicator;

-(IBAction)acOn:(id)sender;
-(IBAction)acOff:(id)sender;

@end

