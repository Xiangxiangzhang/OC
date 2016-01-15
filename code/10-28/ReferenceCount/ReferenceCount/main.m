//
//  main.m
//  ReferenceCount
//
//  Created by qingyun on 15/10/28.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
   
    Person *jack = [Person new];
    NSLog(@"count >> %ld",[jack retainCount]);
    
    //生存和交友
    
    
    
    
    
    return 0;
}
