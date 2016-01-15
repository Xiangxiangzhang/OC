//
//  Music.m
//  歌词解析
//
//  Created by qingyun on 15/11/6.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Music.h"

@implementation Music

- (void)lyricWithFilePath:(NSString *)path
{
    //从文件中
    NSString *file = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    //把歌词用\n分割成数组
    NSArray *ly= [file componentsSeparatedByString:@"\n"];
    
    //创建变量（空的数组）
    _lyric=[NSMutableArray array];
    
    //对数组逐步解析
    for (NSString *str in ly) {
        //先分割成一个数组（时间和歌词分开）
        NSArray *strarr = [str componentsSeparatedByString:@"]"];
        //判断有]时才分割即]有的时候才进行下列操作
        if ([strarr count]>1){
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            
        NSString *time = strarr[0];
        //对时间进一步解析
        NSArray *timeArr = [time componentsSeparatedByString:@":"];
        //substringFromIndex:1从第1个字符开始读取
        NSTimeInterval nstime = [timeArr[1] floatValue] + [[timeArr[0] substringFromIndex:1] floatValue]*60;
        
       //nstime需要是整形，进行封装
        dict[@"time"] = @(nstime);
        dict[@"ric"] = strarr[1];
         //放到数组中
        [_lyric addObject:dict];
        }
    }
}

- (void)song:(NSTimer *)timer
{
    _timeCount +=1;
    for (NSDictionary *dict in  _lyric) {
        
        //(int)[dict[@"time"] （int）只要是大于某数的小数都是此数
        if ((int)[dict[@"time"] floatValue] == (int)_timeCount) {
            
            NSLog(@"[time]:%@\t [ric]:%@",dict[@"time"],dict[@"ric"]);
            [_lyric removeObject:dict];
            break;
        }
    }
   
}

@end
