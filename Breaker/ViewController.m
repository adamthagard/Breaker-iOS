//
//  ViewController.m
//  Breaker
//
//  Created by Adam Thagard on 2014-10-18.
//  Copyright (c) 2014 WestSyde. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//@synthesize core1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.communicator = [[SparkCoreCommunicator alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)acOff:(id)sender{
    
    [self.communicator acOff];
    
}


-(IBAction)acOn:(id)sender{
    
    [self.communicator acOn];

}





@end
