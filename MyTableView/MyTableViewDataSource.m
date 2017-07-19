//
//  MyTableViewDataSource.m
//  MyTableView
//
//  Created by liangzc on 2017/7/18.
//  Copyright © 2017年 xlb. All rights reserved.
//

#import "MyTableViewDataSource.h"

@interface MyTableViewDataSource() 

@property (nonatomic, copy) NSString *cellReuseIdentifier;
@property (nonatomic, copy) CellconfigureBlock configureBlock;
@end

@implementation MyTableViewDataSource

- (instancetype)initWithDataArray:(NSArray *)dataArray
              cellReuseIdentifier:(NSString *)reuseIdentifier
               cellConfigureBlock:(CellconfigureBlock)configureBlock {
    if (self == nil) return nil;
    
    _dataArray = dataArray;
    _cellReuseIdentifier = reuseIdentifier;
    _configureBlock = [configureBlock copy];
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    if (self.dataArray == nil || self.dataArray.count == 0) {
        return nil;
    }
    return self.dataArray[indexPath.row];
}

#pragma mark - UITableView DataSource
- (NSInteger) tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    id cell = [tableView dequeueReusableCellWithIdentifier:self.cellReuseIdentifier forIndexPath:indexPath];
    id item = [self itemAtIndexPath:indexPath];
    self.configureBlock(cell, item);
    
    return cell;
}

@end
