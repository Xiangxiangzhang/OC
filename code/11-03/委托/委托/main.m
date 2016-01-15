//
//  main.m
//  委托
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYManager.h"
#import "QYSecretary.h"
#import "NSObject+Secretary.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QYManager *manger = [[QYManager alloc]init];
        QYSecretary *secretary = [[QYSecretary alloc]init];
        
        manger.delegate = secretary;
        
        [manger work];
        
        [manger.delegate phoneCall:@"明天开会"];
        [manger.delegate bookTicket];
        
        
        
    }
    return 0;
}
