//
//  main.m
//  Elephant
//
//  Created by qingyun on 15/10/22.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Elephant:NSObject
{
    char *_name;
}
-(void)setName:(char *)name;
-(void)eat;
@end

@implementation Elephant
-(void)setName:(char *)name
{
     _name=name;
}

-(void)eat
{
    NSLog(@"%s 喜欢吃香蕉!",_name);
}

@end

int main(int argc, const char * argv[]) {
    Elephant *obj=[Elephant new];
    [obj setName:"lele"];
    [obj eat];
    
    Elephant *obj1=[Elephant new];
    [obj1 setName:"momo"];
    [obj1 eat];
    
    return 0;
}
