//
//  ViewController.m
//  ColorfulWoodSystem
//
//  Created by 大新 on 2018/5/17.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "ViewController.h"
#import "ColorfulWoodSystem.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString* str = [CWSystem interface_iphoneType];

    CWSystemInfo * info = [CWSystem interface_systemInfo];

    NSLog(@"%@",info);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
