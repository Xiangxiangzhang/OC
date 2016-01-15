
//
//  Student.m
//  BlockDemo
//
//  Created by qingyun on 15/11/4.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Student.h"

@implementation Student

-(void)saySomething:(blockType)block
{
    block();
}

- (void)saySomethingToo:(blockType)block
{
    block();
}

- (void)math:(block1)block
{
    block(100,100);
}
@end
