//
//  Tire.h
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
{
    NSString *_brand;
    float _preesure;
    float _tireDeepth;
}

- (NSString *)brand;

- (float)preesure;

- (float)tireDeepth;

- (instancetype)initWithBrand:(NSString *)brand;

- (instancetype)initWithPreesure:(float)preesure andTireDeepth:(float)tireDeepth;


@end
