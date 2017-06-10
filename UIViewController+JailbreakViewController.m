//
//  UIViewController+JailbreakViewController.m
//  yolobreak
//
//  Created by Will Blankemeyer on 6/9/17.
//  Copyright © 2017 wb. All rights reserved.
//

#import "UIViewController+JailbreakViewController.h"

@implementation UIViewController (JailbreakViewController)

- (IBAction)abortButtton:(id)sender {
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle: @"abort jailbreak"
                                                                              message: @"WARNING: aborting mid-run may leave your device in an unusable state! are you sure you want to continue?"
                                                                       preferredStyle:UIAlertControllerStyleAlert];

    [alertController addAction:[UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"proceed" style:UIAlertActionStyleDefault handler:^(UIAlertAction *jailSegue) {
            [self performSegueWithIdentifier:@"abortSegue" sender:self];
    }]];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
