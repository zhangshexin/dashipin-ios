//
//  ViewController.m
//  dashipin
//
//  Created by zhangshexin on 2018/6/27.
//  Copyright © 2018年 dashipin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel* label=[[UILabel alloc]init];
    
    label.text=@"hello world";
    
    [label sizeToFit];
    
    label.center=self.view.center;
    
    [self.view addSubview:label];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
