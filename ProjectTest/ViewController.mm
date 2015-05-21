//
//  ViewController.m
//  ProjectTest
//
//  Created by John on 15/5/20.
//  Copyright (c) 2015年 WorkMac. All rights reserved.
//

#import "ViewController.h"
#include <stdio.h>
#include <sys/time.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    long long int time = getCurrentTime();
    printf("c/c++ program:%lld\n", time);

    sleep(1);
    long long int time2 = getCurrentTime();
    printf("c/c++ program:%lld\n", time2);

}


long getCurrentTime()
{
    struct timeval tv;
    gettimeofday(&tv,NULL);
    return tv.tv_sec * 1000 + tv.tv_usec / 1000;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
