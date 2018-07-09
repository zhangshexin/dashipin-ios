//
//  HomeViewController.m
//  dashipin
//
//  Created by zhangshexin on 2018/6/28.
//  Copyright © 2018年 dashipin. All rights reserved.
//

#import "HomeViewController.h"
#import "CardViewTableCell.h"

//#import "Mine/mine"
@interface HomeViewController ()

@property(nonatomic,strong)NSMutableArray<ViewCardModel *> *viewCards;

@end

@implementation HomeViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    int cardCount=10;
    self.viewCards = [[NSMutableArray alloc] init];
    for (int i=0;i<cardCount; i++) {
        ViewCardModel *model=[ViewCardModel alloc];
        [model setName:@"小王"];
        [_viewCards addObject:model];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _viewCards.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CardViewTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CARDVIEW"];
    if (nil == cell) {
        cell = [[CardViewTableCell alloc] initCardVie:_viewCards[indexPath.row]];
    }

    return cell;
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
