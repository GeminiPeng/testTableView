//
//  EagleDateSource.h
//  Eagle－C
//
//  Created by Pengbo on 16/2/25.
//  Copyright © 2016年 MacBook01. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

typedef void(^cellConfigureBlock)(UITableViewCell* cell,id model,NSIndexPath*path);

@interface EagleDateSource : NSObject<UITableViewDataSource>

- (id)initWithIdentifier:(NSString *)identifier configureBlock:(cellConfigureBlock)before;

@property (nonatomic, copy) cellConfigureBlock cellConfigureBefore;

@property (nonatomic, copy) NSString * cellIdentifier;

- (void)addModels:(NSArray *)models;

- (id)modelsAtIndexPath:(NSIndexPath *)indexPath;

@end
