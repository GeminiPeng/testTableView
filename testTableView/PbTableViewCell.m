//
//  PbTableViewCell.m
//  testTableView
//
//  Created by Pengbo on 16/2/25.
//  Copyright © 2016年 Pengbo. All rights reserved.
//

#import "PbTableViewCell.h"

@implementation PbTableViewCell

-(void)configureCellWithModel:(id)model {
    self.label.text = model;
}
@end
