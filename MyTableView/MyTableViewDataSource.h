//
//  MyTableViewDataSource.h
//  MyTableView
//
//  Created by liangzc on 2017/7/18.
//  Copyright © 2017年 xlb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^CellconfigureBlock)(id cell ,id item);
@interface MyTableViewDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, strong) NSArray *dataArray;

- (instancetype)initWithDataArray:(NSArray *)dataArray
              cellReuseIdentifier:(NSString *)reuseIdentifier
               cellConfigureBlock:(CellconfigureBlock)configureBlock;
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;
@end
