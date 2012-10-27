//
//  ViewController.h
//  YebisuProject
//
//  Created by サトシ on 12/10/10.
//  Copyright (c) 2012年 Satoshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {

    IBOutlet UIButton *gbtn;
    IBOutlet UIButton *cbtn;
    IBOutlet UIButton *pbtn;
    
    IBOutlet UILabel *resultbtn;
    IBOutlet UIImageView *targetimg;
}

-(IBAction)gbtn_down:(id)sender;
-(IBAction)cbtn_down:(id)sender;
-(IBAction)pbtn_down:(id)sender;

@end
