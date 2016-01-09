//
//  SparkCoreCommunicator.m
//  Breaker
//
//  Created by Adam Thagard on 2016-01-09.
//  Copyright © 2016 WestSyde. All rights reserved.
//

#import "SparkCoreCommunicator.h"

@implementation SparkCoreCommunicator

-(id)init {
    if ( self = [super init] ) {

        self.core1 = [SparkCore coreWithdeviceID:DEVICE_ID accessToken:ACCESS_TOKEN];
        
        self.core1.delegate = self;
    }
    return self;
}



-(void)acOff{
    [self executeSparkFunction:@"ac" withArg:@"off"];
}

-(void)acOn{
    [self executeSparkFunction:@"ac" withArg:@"on"];
}



-(void)executeSparkFunction:(NSString*)fn withArg:(NSString*)arg{
    [self.core1 executeFunction:fn
                       argument:arg
                     returnKeys:@[@"value1"]
              completionHandler:^(NSDictionary *result, NSError *error){
                  
                  if (! error) {
                      NSLog(@"result was %@", result);
                  }else{
                      NSLog(@"%@",error);
                  }
              }];
}



// Light functionality not currently enabled

//-(void)ToggleOn{
//    [self executeSparkFunction:@"toggleLights" withArg:@"1"];
//}
//
//-(void)ToggleOff{
//    [self executeSparkFunction:@"toggleLights" withArg:@"0"];
//}
//
//-(void)ToggleOn2{
//    [self executeSparkFunction:@"toggleLights" withArg:@"21"];
//}
//
//-(void)ToggleOff2{
//    [self executeSparkFunction:@"toggleLights" withArg:@"20"];
//}


@end
