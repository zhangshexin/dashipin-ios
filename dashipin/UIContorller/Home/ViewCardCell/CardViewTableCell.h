//
//  CardViewTableCell.h
//  dashipin
//
//  Created by zhangshexin on 2018/6/29.
//  Copyright © 2018年 dashipin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewCardModel.h"

@interface CardViewTableCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *photo;
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *attention;
@property (weak, nonatomic) IBOutlet UILabel *money;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *thumbnail;
@property (weak, nonatomic) IBOutlet UILabel *shareCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *praiseCountLabel;

-(instancetype)initCardVie:(ViewCardModel *)model;
@end
