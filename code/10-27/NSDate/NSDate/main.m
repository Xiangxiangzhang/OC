//
//  main.m
//  NSDate
//
//  Created by qingyun on 15/10/28.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //1.NSDate
    NSDate *now = [NSDate date];//now 现在
    NSLog(@" now >> %@",now);//打印现在时间
    
    //2.时差
    NSTimeInterval interval = 60*60*24; //时差
    //通过时差得到另外一个时间
    NSDate *tomorrow = [now dateByAddingTimeInterval:interval];//明天现在的时间
    NSDate *yesterday = [now dateByAddingTimeInterval:-interval];//昨天现在的时间
    NSDate *someDay = [NSDate dateWithTimeInterval:2*interval sinceDate:yesterday];//两天后的现在
    
    //时间差
    NSTimeInterval result = [now timeIntervalSinceDate:someDay];//求时间差
    NSLog(@" result >>%.2f",result);//打印
    
    //3.日期比较
    if ([tomorrow isEqualToDate:someDay]) {
        NSLog(@"都是明天!");
    }
        NSDate *early = [tomorrow earlierDate:yesterday];
        NSLog(@" early >> %@",early);
        NSDate *later = [tomorrow laterDate:early];
        NSLog(@" later >> %@",later);
    
    //4.时区
    NSArray *zones = [NSTimeZone knownTimeZoneNames];
    for (NSString *zone in zones) {
        if ([zone containsString:@"Shanghai"]) {
            NSLog(@"zone >>> %@",zone);
        }
    }
    
    NSTimeZone *local = [NSTimeZone defaultTimeZone];
    NSLog(@" local >> %@",local);
    
    //5.时间的格式化
    NSDateFormatter *formatter = [NSDateFormatter new];
    
    [formatter setDateStyle:NSDateFormatterFullStyle];//设置年，月，日，星期
    [formatter setTimeStyle:NSDateFormatterShortStyle];//设置时间
    
    [formatter setTimeZone:local];
    NSLog(@" now >> %@",[formatter stringFromDate:now]);
    
    //随意格式的时间
    [formatter setDateFormat:@"yyyy//MM//dd HH-mm-ss"];
    NSLog(@" now >>> %@",[formatter stringFromDate:now]);
    
    //设置格式
    [formatter setDateFormat:@"'公元前/后:'G  '年份:'u'='yyyy'='yy '季度:'q'='qqq'='qqqq '月份:'M'='MMM'='MMMM '今天是今年第几周:'w '今天是本月第几周:'W  '今天是今年第几天:'D '今天是本月第几天:'d '星期:'c'='ccc'='cccc '上午/下午:'a '小时:'h'='H '分钟:'m '秒:'s '毫秒:'SSS  '这一天已过多少毫秒:'A  '时区名称:'zzzz'='vvvv '时区编号:'Z "];
    NSLog(@"now >>> %@", [formatter stringFromDate:[NSDate date]]);
    
    // 把对应格式的字符串转换为时间
    NSString *dateStr = @"公元前/后:公元  年份:2015=2015=15 季度:4=4季度=第四季度 月份:10=10月=十月 今天是今年第几周:44 今天是本月第几周:5  今天是今年第几天:300 今天是本月第几天:27 星期:3=周二=星期二 上午/下午:上午 小时:11=11 分钟:3 秒:44 毫秒:727  这一天已过多少毫秒:39824727  时区名称:中国标准时间=中国标准时间 时区编号:+0800";
    NSDate *date = [formatter dateFromString:dateStr];
    NSLog(@"date >>> %@", date);
    
    NSString *dateStr1 = @"2015-10-28 19:41:50";
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date1 = [formatter dateFromString:dateStr1];
    NSLog(@" date1 >> %@",date1);
    
    //6.NSCalendar(日历)
    NSCalendar *calendar = [NSCalendar currentCalendar];//造格子
    NSDateComponents *compoenet = [NSDateComponents new];
    
    [compoenet setYear:2015];
    [compoenet setMinute:10];
    [compoenet setDay:27];
    NSDate *date2 = [calendar dateFromComponents:compoenet];
    NSLog(@" date2 >>> %@",date2);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
