//
//  MyLayout.h
//  MyTableView
//
//  Created by liangzc on 2017/7/18.
//  Copyright © 2017年 xlb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MyModel;
@interface MyLayout : NSObject

@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat messageH;

- (instancetype)initWithMyModel:(MyModel *)myModel;
@end
