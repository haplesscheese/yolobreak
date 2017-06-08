//
//  ViewController.h
//  yolobreak
//
//  Created by Will Blankemeyer on 6/5/17.
//  Copyright © 2017 wb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sys/utsname.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
    @property (weak, nonatomic) IBOutlet UILabel *deviceString;
    @property (weak, nonatomic) IBOutlet UIButton *jailButton;
    

@end

