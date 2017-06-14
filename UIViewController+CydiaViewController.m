//
//  UIViewController+CydiaViewController.m
//  yolobreak
//
//  Created by Will Blankemeyer on 6/9/17.
//  Copyright © 2017 wb. All rights reserved.
//

#import "UIViewController+CydiaViewController.h"
#import "DTTJailbreakDetection.h"

@implementation CydiaViewController : UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if ([DTTJailbreakDetection isJailbroken]) {
        
     //   _cydiaButton.enabled = YES;
    }
    else {
   //     _cydiaButton.enabled = NO;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
@end
