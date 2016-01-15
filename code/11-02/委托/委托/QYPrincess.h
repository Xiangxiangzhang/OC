//
//  QYPrincess.h
//  委托
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QYPrince;
@interface QYPrincess : NSObject

@property (nonatomic,strong)QYPrince *delegate;

- (void)sleep;

@end
