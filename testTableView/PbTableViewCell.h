//
//  PbTableViewCell.h
//  testTableView
//
//  Created by Pengbo on 16/2/25.
//  Copyright © 2016年 Pengbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PbTableViewCell.h"
@class PbTableViewCell;
@protocol PbTableViewCellDelegate <NSObject>
@optional
-(void)configureCellWithModel:(id)model;
@end
@interface PbTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;
@property(nonatomic,weak)id<PbTableViewCellDelegate> delegate;

@end
