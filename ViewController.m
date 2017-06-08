//
//  ViewController.m
//  yolobreak
//
//  Created by Will Blankemeyer on 6/5/17.
//  Copyright © 2017 wb. All rights reserved.
//

#import "ViewController.h"
#import <sys/utsname.h>
#import "DTTJailbreakDetection.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString* exploitReady = @"1";
    
    if ([exploitReady  isEqual: @"1"]) {
        _jailButton.enabled = YES;
    }
    else {
        _jailButton.enabled = NO;
    }
    
    NSString* deviceModel = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    NSString* jailString = @"";
    if ([DTTJailbreakDetection isJailbroken]) {
        jailString = @"jailbroken";
    }
    
    else {
        jailString = @"not jailbroken";
    }
    
    _deviceString.text = [NSString stringWithFormat: @"your %@ is %@", deviceModel, jailString];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
