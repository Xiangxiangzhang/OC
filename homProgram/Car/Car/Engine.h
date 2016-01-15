//
//  Engine.h
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Engine : NSObject
{
    NSString *_name;
    float _power;
}

- (NSString *)name;

- (float)power;

@end
