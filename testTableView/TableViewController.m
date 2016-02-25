//
//  TableViewController.m
//  testTableView
//
//  Created by Pengbo on 16/2/25.
//  Copyright © 2016年 Pengbo. All rights reserved.
//

#import "TableViewController.h"
#import "EagleDateSource.h"

@interface TableViewController ()

@property (strong, nonatomic) IBOutlet EagleDateSource *data;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

//    _data = [[EagleDateSource alloc]initWithIdentifier:@"PBCell" configureBlock:^(UITableViewCell *cell, id model, NSIndexPath *path) {
//        cell.textLabel.text = model;
//    }];
    [_data addModels:@[@"1",@"2",@"3",@"4"]];
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
