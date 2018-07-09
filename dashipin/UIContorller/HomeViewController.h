//
//  HomeViewController.h
//  dashipin
//
//  Created by zhangshexin on 2018/6/28.
//  Copyright © 2018年 dashipin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomViewController.h"
#import "ViewCardModel.h"

@interface HomeViewController :CustomViewController
@property (weak, nonatomic) IBOutlet UITableView *viewCardTable;
@property (weak, nonatomic) IBOutlet UIButton *btnIndex;//首页
@property (weak, nonatomic) IBOutlet UIButton *btnRecomment;//推荐
@property (weak, nonatomic) IBOutlet UIButton *btnRecode;//录制
@property (weak, nonatomic) IBOutlet UIButton *btnMining;//挖矿
@property (weak, nonatomic) IBOutlet UIButton *btnMine;//我

@end
