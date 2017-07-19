//
//  MyViewModel.h
//  MyTableView
//
//  Created by liangzc on 2017/7/18.
//  Copyright © 2017年 xlb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyViewModel : NSObject

+ (NSArray *)fetchDataArray;
+ (NSArray *)createLayoutsWithDatas:(NSArray *)datas;
@end
