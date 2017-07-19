//
//  MyModel.m
//  MyTableView
//
//  Created by liangzc on 2017/7/18.
//  Copyright © 2017年 xlb. All rights reserved.
//

#import "MyModel.h"

@implementation MyModel

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    if ([dict isKindOfClass:[NSDictionary class]]) {
        self = [super init];
        if (self) {
            [self setValuesForKeysWithDictionary:dict];
        }
        return self;
    } else {
        return nil;
    }
}

@end

