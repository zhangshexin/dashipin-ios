//
//  CardViewTableCell.m
//  dashipin
//
//  Created by zhangshexin on 2018/6/29.
//  Copyright © 2018年 dashipin. All rights reserved.
//

#import "CardViewTableCell.h"


@implementation CardViewTableCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(instancetype)initCardVie:(ViewCardModel *)model{
    if(self = [super init]){
        self=[[[NSBundle mainBundle] loadNibNamed:@"CardViewTableCell" owner:self options:nil]lastObject];
        if(model !=nil){
            _userName.text=model.name;
        }
    }
    return self;
}
@end
