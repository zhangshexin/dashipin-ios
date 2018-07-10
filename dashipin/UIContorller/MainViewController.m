//
//  MainViewController.m
//  dashipin
//
//  Created by zhangshexin on 2018/7/9.
//  Copyright © 2018年 dashipin. All rights reserved.
//

#import "MainViewController.h"
#import "Home/HomeViewController.h"
#import "Choiceness/ChoicenessViewController.h"
#import "Mining/MiningViewController.h"
#import "Mine/MineViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    HomeViewController *home=[HomeViewController new];
    home.tabBarItem.title=@"首页";
    home.tabBarItem.image=[UIImage imageNamed:@"IconHomeUnselected"];
    home.tabBarItem.selectedImage=[UIImage imageNamed:@"IconHomeSelected"];
    
    ChoicenessViewController *choiceness=[ChoicenessViewController new];
    choiceness.tabBarItem.title=@"精选";
    choiceness.tabBarItem.image=[UIImage imageNamed:@"IconStarUnselected"];
    
    MiningViewController *mining=[MiningViewController new];
    mining.tabBarItem.title=@"挖矿";
    mining.tabBarItem.image=[UIImage imageNamed:@"IconBuycarUnselected"];
    
    MineViewController *mine=[MineViewController new];
    mine.tabBarItem.title=@"我";
    mine.tabBarItem.image=[UIImage imageNamed:@"IconMineUnselected"];
//    self.tabBar.translucent=NO;
    UIViewController *placeHolder=[UIViewController new];
    placeHolder.tabBarItem.image=nil;
    placeHolder.tabBarItem.title=nil;
    placeHolder.tabBarItem.selectedImage=nil;
    
    self.tabBar.backgroundColor=[UIColor colorWithRed:24.0/255.0 green:24.0/255.0 blue:24.0/255.0 alpha:1.0];
    
    self.viewControllers=@[home,choiceness,placeHolder,mining,mine];
}

-(void)viewWillAppear:(BOOL)animated{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //    publishButton.backgroundColor = wjRandomColor;
        [publishButton setImage:[UIImage imageNamed:@"IconPlus"] forState:UIControlStateNormal];
        [publishButton setImage:[UIImage imageNamed:@"IconPlus"] forState:UIControlStateHighlighted];
        // 设置发布按钮的frame
        // 注意的是一定要把占位的tabBarButton完全覆盖掉，不然点击的时候会把占位的子控制器点击出来
        publishButton.frame = CGRectMake(0, 0, self.tabBar.frame.size.width / 5, self.tabBar.frame.size.height);
        // 设置发布按钮的中心点，在tabBar的中心
        publishButton.center = CGPointMake(self.tabBar.frame.size.width * 0.5, self.tabBar.frame.size.height * 0.5);
        // 发布按钮的点击事件
         [self.tabBar addSubview:publishButton];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
