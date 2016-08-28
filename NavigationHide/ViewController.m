//
//  ViewController.m
//  NavigationHide
//
//  Created by  wuhiwi on 16/8/28.
//  Copyright © 2016年 wanglibank. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)presentAction:(id)sender {
    SecondViewVC *second = [[SecondViewVC alloc] init];
    UINavigationController *naVC = [[UINavigationController alloc] initWithRootViewController:second];
    [self presentViewController:naVC animated:YES completion:nil];
}

@end
