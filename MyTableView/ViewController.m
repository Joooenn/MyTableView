//
//  ViewController.m
//  MyTableView
//
//  Created by liangzc on 2017/7/18.
//  Copyright © 2017年 xlb. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewDataSource.h"
#import "MyTableViewCell.h"
#import "MyModel.h"
#import "MyLayout.h"
#import "MyViewModel.h"

@interface ViewController () <UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) MyTableViewDataSource *dataSource;
@property (nonatomic, strong) NSArray *layouts;
@property (nonatomic, strong) NSArray *dataArray;

@end

static NSString * const kMyCellReuseIdentifier = @"MyTableViewCell";

int b;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.dataArray = [MyViewModel fetchDataArray];
    self.layouts = [MyViewModel createLayoutsWithDatas:self.dataArray];
    
    
    self.dataSource = [[MyTableViewDataSource alloc] initWithDataArray:self.dataArray cellReuseIdentifier:kMyCellReuseIdentifier cellConfigureBlock:^(MyTableViewCell *cell, MyModel *item) {
        cell.model = item;
    }];
    self.tableView.dataSource = self.dataSource;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView Delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyLayout *layout = self.layouts[indexPath.row];
    return layout.height;
}

@end
