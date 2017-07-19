//
//  MyViewModel.m
//  MyTableView
//
//  Created by liangzc on 2017/7/18.
//  Copyright © 2017年 xlb. All rights reserved.
//

#import "MyViewModel.h"
#import "MyModel.h"
#import "MyLayout.h"

@implementation MyViewModel

+ (NSArray *)fetchDataArray {
    
    NSArray *array = @[@{@"message":@"aasssssadsdssaaaaaaawwwwwwwwwwwwwwawaawwwwwaawawwawawawwa", @"time":@"2017-7-14 00:00:00"},
                       @{@"message":@"qwwwwwwweqwrereetrewerewrewrewewrewewrewwer", @"time":@"2017-7-15 00:00:00"},
                       @{@"message":@"ggghghghhggghgghghgghhgghhggghhhghghhghghghghghghgh", @"time":@"2017-7-16 00:00:00"},
                       @{@"message":@"opopoppopoppopopopopoooopopopopopooooooopoopooooooopoopoooopopopoooooopoppoooopoopo", @"time":@"2017-7-17 00:00:00"},
                       @{@"message":@"mnmnmnnmnmnmnnmnmnmnmnmnmnmn", @"time":@"2017-7-18 00:00:00"}];
    NSMutableArray *temp = [NSMutableArray new];
    for (NSDictionary *dict in array) {
        
        MyModel *model = [[MyModel alloc] initWithDictionary:dict];
        [temp addObject:model];
    }
    return temp.copy;
}

+ (NSArray *)createLayoutsWithDatas:(NSArray *)datas {
    
    NSMutableArray *temp = [NSMutableArray new];
    for (MyModel *model in datas) {
        MyLayout *layout = [[MyLayout alloc] initWithMyModel:model];
        [temp addObject:layout];
    }
    return temp.copy;
}
@end
