//
//  ViewController.m
//  TestSystem
//
//  Created by 大新 on 2018/5/17.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "ViewController.h"
#import <ColorfulWoodSystem.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CWSystemInfo * info = [CWSystem interface_systemInfo];

    NSLog(@"%@\n%@\n%@\n%@\n%@\n",
          info.m_iphoneSystemVersion,
          info.m_iphoneUUID,
          info.m_iphoneType,
          info.m_iphoneName,
          info.m_appVersion);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
