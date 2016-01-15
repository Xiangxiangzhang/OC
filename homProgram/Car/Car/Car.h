//
//  Car.h
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Tire;
@class Engine;

@interface Car : NSObject
{
    NSString *_brand;
    int _price;
    Tire *_tires;
    Engine *_engine;
}

- (NSString *)brand;

- (int)price;

- (Tire *)tires;

- (Engine *)engine;

- (instancetype)initWithBrand:(NSString *)brand andPrice:(int)price;

- (instancetype)initWithTires:(Tire *)tires;

- (instancetype)initWithEngine:(Engine *)engine;

- (instancetype)initWithTires:(Tire *)tires andEngine:(Engine *)engine;



@end
