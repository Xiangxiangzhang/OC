//
//  main.m
//  DrawShape
//
//  Created by qingyun on 15/10/23.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    Kgreen,
    Kblue,
    Kred
}SPColor;

typedef struct{
    int x;
    int y;
    int height;
    int width;
}SPRect;

@interface Triangle : NSObject
{
    SPColor _color;
    SPRect _rect;
}

+ (Triangle *)triangleWithColor:(SPColor)color andRect:(SPRect)rect;
+ (NSString *)colorName:(SPColor)color;

-(void)setColor:(SPColor)color;
-(SPColor)color;

-(void)setRect:(SPRect)rect;
-(SPRect)rect;

-(void)draw;

@end

@implementation Triangle

+ (Triangle *)triangleWithColor:(SPColor)color andRect:(SPRect)rect
{
    Triangle *t=[Triangle new];
    [t setColor:color];
    [t  setRect:rect];
    return t;
}
+ (NSString *)colorName:(SPColor)color
{
    NSString *name;
    switch (color) {
        case Kgreen:
            name=@"绿色";
            break;
        case Kblue:
            name=@"蓝色";
            break;
        case Kred:
            name=@"红色";
            break;
        default:
            name=@"不知道啥颜色";
            break;
    }
    return name;
}

-(void)setColor:(SPColor)color
{
    _color=color;
}
-(SPColor)color
{
    return _color;
}

-(void)setRect:(SPRect)rect
{
    _rect=rect;
}
-(SPRect)rect
{
    return _rect;
}

-(void)draw
{
    NSLog(@"在{%d,%d,%d,%d}区域内用 %@ 颜色画了一个三角形",_rect.x,_rect.y,_rect.width,_rect.height,[Triangle colorName:_color]);
}
@end


int main(int argc, const char * argv[]) {
    Triangle *tg=[Triangle new];
    [tg setColor:Kblue];
    SPRect rect1={10,10,100,100};
    [tg setRect:rect1];
    [tg draw];
    
    
    
    return 0;
}
