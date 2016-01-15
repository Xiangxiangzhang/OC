//
//  xiaoming.h
//  看电影
//
//  Created by qingyun on 15/11/7.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BookTicks.h"

@interface Xiaoming : NSObject

@property (nonatomic,strong) id <BookTicks> delegate;

- (void)WantTo;

@end
