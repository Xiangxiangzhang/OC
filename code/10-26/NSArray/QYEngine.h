//
//  QYEngine.h
//  QYCar
//
//  Created by qingyun on 15/10/24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYEngine : NSObject
{
    float _power;
}

- (void)setPower:(float)power;
- (float)power;

@end
