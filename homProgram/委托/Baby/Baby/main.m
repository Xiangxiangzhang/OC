//
//  main.m
//  Baby
//
//  Created by qingyun on 15/11/6.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Baby.h"
#import "Mammy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Baby *baby = [[Baby alloc] init];
        Mammy *mammy = [[Mammy alloc] init];
        
        baby.delegate=mammy;
        
        [baby cry];
        
    }
    return 0;
}
