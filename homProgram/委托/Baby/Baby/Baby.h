//
//  Baby.h
//  Baby
//
//  Created by qingyun on 15/11/6.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Look.h"

@interface Baby : NSObject

@property (nonatomic,strong) id <Look> delegate;

- (void)cry;

@end
