//
//  Car.h
//  Blocks
//
//  Created by qingyun on 15/11/5.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (nonatomic) int price;

- (void)run:(void(^)(void))block;

@end
