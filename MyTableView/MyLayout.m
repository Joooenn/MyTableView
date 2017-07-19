//
//  MyLayout.m
//  MyTableView
//
//  Created by liangzc on 2017/7/18.
//  Copyright © 2017年 xlb. All rights reserved.
//

#import "MyLayout.h"
#import "MyModel.h"
#import "NLUtils.h"

static CGFloat const kTopSpacing = 15.0;
static CGFloat const kSpacing = 8.0;
static CGFloat const kDefaultTimeHeight = 16.0;
static CGFloat const kLineHeight = 0.5;
static CGFloat const kMessageLeadingSpacing = 50.0;
static CGFloat const kDefaultMessageHeight = 18.0;

@implementation MyLayout

- (instancetype)initWithMyModel:(MyModel *)myModel {
    self = [super init];
    if (self == nil) return nil;
    
    [self layoutWithMyModel:myModel];
    return self;
}

- (void)layoutWithMyModel:(MyModel *)model {
    
    [self layoutMessage:model.message];
    
    CGFloat height = 0;
    height += kTopSpacing;
    height += self.messageH;
    height += kSpacing;
    height += kDefaultTimeHeight;
    height += kSpacing;
    height += kLineHeight;
    self.height = height;
}

- (void)layoutMessage:(NSString *)message {
    
    CGFloat messageH = [NLUtils fetchHeightWithText:message width:[UIScreen mainScreen].bounds.size.width - kMessageLeadingSpacing - kSpacing font:[UIFont systemFontOfSize:15]];
    if (messageH < kDefaultMessageHeight) {
        self.messageH = kDefaultMessageHeight;
    } else {
        self.messageH = messageH;
    }
}

@end
