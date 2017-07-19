//
//  MyTableViewCell.m
//  MyTableView
//
//  Created by liangzc on 2017/7/18.
//  Copyright © 2017年 xlb. All rights reserved.
//

#import "MyTableViewCell.h"
#import "MyModel.h"

@interface MyTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@end

@implementation MyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

}

- (void)setModel:(MyModel *)model {
    _model = model;
    
    self.messageLabel.text = model.message;
    self.timeLabel.text = model.time;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
