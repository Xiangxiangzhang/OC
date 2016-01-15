//
//  AllWeatherTire.h
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Tire.h"

@interface AllWeatherTire : Tire
{
    NSString *_rainHandling;
    NSString *_snowHandling;
}

- (NSString *)rainHandling;

- (NSString *)snowHandling;

- (instancetype)initWithRainHandling:(NSString *)rainHandling andSnowHandling:(NSString *)snowHandling;

@end
