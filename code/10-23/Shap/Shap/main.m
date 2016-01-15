//
//  main.m
//  Shap
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

@interface Shape : NSObject
{
    SPColor _color;
    SPRect _rect;
}

+ (instancetype)shapeWithColor:(SPColor)color andRect:(SPRect)rect;
+ (NSString *)colorName:(SPColor)color;

-(void)setColor:(SPColor)color;
-(SPColor)color;

-(void)setRect:(SPRect)rect;
-(SPRect)rect;

-(void)draw;

@end

@implementation Shape

// 一般情况下不需要写特殊的类方法
// 最常写一种类方法就是下面这种创建对象的类方法，这样封装对象的创建过程和主要成员变量赋值的过程
+ (instancetype)shapeWithColor:(SPColor)color andRect:(SPRect)rect
{
        Shape *t=[Shape new];
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
    NSLog(@"在{%d,%d,%d,%d}区域内用 %@ 颜色画了一个图形",_rect.x,_rect.y,_rect.width,_rect.height,[Shape colorName:_color]);
}


@end

//继承
@interface  Triangle : Shape

@end

@implementation Triangle

@end

@interface Circle : Shape

@end

@implementation Circle

@end

int main(int argc, const char * argv[]) {
    Shape *sp=[Shape shapeWithColor:Kblue andRect:(SPRect){20,40,60,80}];
    [sp draw];
    
    Triangle *tr=(Triangle *)[Triangle shapeWithColor:Kred andRect:(SPRect){30,40,50,60}];
    [tr draw];
    
    Circle *ci=(Circle *)[Circle shapeWithColor:Kgreen andRect:(SPRect){40,90,10,40}];
    [ci draw];
    
    return 0;
}
