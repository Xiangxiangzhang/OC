//
//  main.m
//  非正式协议
//
//  Created by qingyun on 15/11/3.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYManger.h"
#import "QYSecretary.h"
#import "NSObject+Secretary.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QYManger *manager = [[QYManger alloc]init];
        
        QYSecretary *secretary = [[QYSecretary alloc]init];
        
        manager.delegate=secretary;
        
        [manager work];
        
        [manager.delegate phoneCall:@"明天来郑州开会"];
        [manager.delegate bookTicket];
                
    }
    return 0;
}
