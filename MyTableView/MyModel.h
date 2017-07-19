//
//  MyModel.h
//  MyTableView
//
//  Created by liangzc on 2017/7/18.
//  Copyright © 2017年 xlb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyModel : NSObject

@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *time;

- (instancetype)initWithDictionary:(NSDictionary *)dict;

@end
