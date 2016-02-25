//
//  EagleDateSource.m
//  Eagle－C
//
//  Created by Pengbo on 16/2/25.
//  Copyright © 2016年 MacBook01. All rights reserved.
//

#import "EagleDateSource.h"
#import "PbTableViewCell.h"
@interface EagleDateSource ()<PbTableViewCellDelegate>{
    
    NSMutableArray *eagle_Models;
}

@end
@implementation EagleDateSource

- (id)initWithIdentifier:(NSString *)identifier configureBlock:(cellConfigureBlock)before{

    if (self = [super init]) {
        _cellIdentifier = identifier;
        _cellConfigureBefore = [before copy];
    }
    return self;
}

- (void)addModels:(NSArray *)models{
    if(!models) return;
    if(!eagle_Models) {
        eagle_Models = [[NSMutableArray alloc] init];
    }
    [eagle_Models addObjectsFromArray:models];
}

- (id)modelsAtIndexPath:(NSIndexPath *)indexPath{
    
    return eagle_Models.count > indexPath.row ? eagle_Models[indexPath.row] : nil;
    
}
#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return eagle_Models == nil ? 0: eagle_Models.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier
                                                            forIndexPath:indexPath];
    id model = [self modelsAtIndexPath:indexPath];
    
    if(self.cellConfigureBefore) {
        self.cellConfigureBefore(cell, model,indexPath);
        
    }
    if ([cell respondsToSelector:@selector(configureCellWithModel:)]) {
        [cell performSelector:@selector(configureCellWithModel:) withObject:model];
    }
    
    
    return cell;
}

@end
