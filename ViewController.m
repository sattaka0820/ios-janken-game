//
//  ViewController.m
//  YebisuProject
//
//  Created by サトシ on 12/10/10.
//  Copyright (c) 2012年 Satoshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

UIImage *g_img;
UIImage *c_img;
UIImage *p_img;

- (void)viewDidLoad
{
    [super viewDidLoad];
    g_img = [UIImage imageNamed:@"gu.png"];
    c_img = [UIImage imageNamed:@"ch.png"];
    p_img = [UIImage imageNamed:@"pa.png"];
    
    [resultbtn setFont:[UIFont boldSystemFontOfSize:30.0f]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)gbtn_down:(id)sender {
    NSInteger result = arc4random() % 3;
    if (result == 0) {
        [targetimg setImage:g_img];
        resultbtn.text = @"あいこ!";
        [resultbtn setTextColor:[UIColor blackColor]];
    } else if (result == 1) {
        [targetimg setImage:c_img];
        resultbtn.text = @"WIN!";
        [resultbtn setTextColor:[UIColor redColor]];
    } else {
        [targetimg setImage:p_img];
        resultbtn.text = @"LOSE...";
        [resultbtn setTextColor:[UIColor blueColor]];
    }
}

-(IBAction)cbtn_down:(id)sender {
    NSInteger result = arc4random() % 3;
    if (result == 0) {
        [targetimg setImage:g_img];
        resultbtn.text = @"LOSE...";
        [resultbtn setTextColor:[UIColor blueColor]];
    } else if (result == 1) {
        [targetimg setImage:c_img];
        resultbtn.text = @"あいこ!";
        [resultbtn setTextColor:[UIColor blackColor]];
    } else {
        [targetimg setImage:p_img];
        resultbtn.text = @"WIN!";
        [resultbtn setTextColor:[UIColor redColor]];
    }
}

-(IBAction)pbtn_down:(id)sender {
    NSInteger result = arc4random() % 3;
    if (result == 0) {
        [targetimg setImage:g_img];
        resultbtn.text = @"WIN!";
        [resultbtn setTextColor:[UIColor redColor]];
    } else if (result == 1) {
        [targetimg setImage:c_img];
        resultbtn.text = @"LOSE...";
        [resultbtn setTextColor:[UIColor blueColor]];
    } else {
        [targetimg setImage:p_img];
        resultbtn.text = @"あいこ!";
        [resultbtn setTextColor:[UIColor blackColor]];
    }
}

-(IBAction)resetbtn_down:(id)sender {
    resultbtn.text = @"結果は...";
    gbtn.hidden = NO;
    cbtn.hidden = NO;
    pbtn.hidden = NO;
}

@end
