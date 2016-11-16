//
//  ViewController.m
//  ZSRadarViewDemo
//
//  Created by Kael on 2016/11/16.
//  Copyright © 2016年 创维海通. All rights reserved.
//

#import "ViewController.h"
#import "CustomRadarView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet CustomRadarView *radarView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [_radarView addRadarAnimation];
    });
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
