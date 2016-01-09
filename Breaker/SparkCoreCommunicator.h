//
//  SparkCoreCommunicator.h
//  Breaker
//
//  Created by Adam Thagard on 2016-01-09.
//  Copyright © 2016 WestSyde. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SparkCore.h"
#import "CREDENTIALS.h"

@interface SparkCoreCommunicator : NSObject <SparkCoreDelegate>

@property (strong,nonatomic) SparkCore *core1;

-(void)acOn;
-(void)acOff;

//-(void)ToggleOff;
//-(void)ToggleOn;
//-(void)ToggleOff2;
//-(void)ToggleOn2;

@end
