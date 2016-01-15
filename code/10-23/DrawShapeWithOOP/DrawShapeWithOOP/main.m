//
//  main.m
//  DrawShapeWithOOP
//
//  Created by qingyun on 15/10/24.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Kblue,
    Kred,
    Kyellow
} SPColor;

typedef struct {
    int x;
    int y;
    int width;
    int height;
} SPRect;

@interface Shape : NSObject

{
    SPColor _color;
    SPRect _rect;
}

+ (instancetype)shapeWithColor:(SPColor)color andRect:(SPRect)rect;

+ (NSString *)colorName:(SPColor)color;

- (void)setColor:(SPColor)color;
- (SPColor)color;

- (void)setRect:(SPRect)rect;
- (SPRect)rect;

- (void)draw;

@end

@implementation Shape

+ (instancetype)shapeWithColor:(SPColor)color andRect:(SPRect)rect
{
    Shape *t = [Shape new];
    [t setColor:color];
    [t setRect:rect];
    return t;
}

+ (NSString *)colorName:(SPColor)color
{
    NSString *name;
    switch (color) {
        case Kblue:
            name = @"蓝色";
            break;
        case Kred:
            name = @"红色";
            break;
        case Kyellow:
            name = @"黄色";
            break;
        default:
            name = @"透明";
            break;
    }
    return name;
}

- (void)setColor:(SPColor)color
{
    _color = color;
}
- (SPColor)color
{
    return _color;
}

- (void)setRect:(SPRect)rect
{
    _rect = rect;
}
- (SPRect)rect
{
    return _rect;
}

- (void)draw
{
    NSLog(@"在 {%d, %d, %d, %d} 区域内用 %@ 颜色画了一个:",  _rect.x, _rect.y, _rect.width, _rect.height,[Shape colorName:_color] );
}

@end

@interface Triangle : Shape

@end

@implementation Triangle

//- (void)draw
//{
    // 在子类中使用super可以调用父类中的方法逻辑
    //[super draw];
   /*[self draw];*/
    
    // self 在子类对象方法中调用子类自身的其他方法
    // self 的本质也是一个指针，任何对象在调用对象方法的同时会把自身的地址传入到该方法，那么在该方法中就可以使用self来代替这个对象
    // 任何OC方法中 的self 都是 调用 这个方法那个对象 本身
    
    //NSLog(@"三角形");
//}
- (void)draw
{
    NSLog(@"在{%d,%d,%d,%d区域内用%@颜色画了一个圆形}",_rect.x,_rect.y ,_rect.width,_rect.height,[Shape colorName:_color]);
    NSLog(@"%s三角形",__func__);
}

@end

int main(int argc, const char * argv[]) {
    
    Shape *sp = [Shape shapeWithColor:Kblue andRect:(SPRect){10,10,20,10}];
    [sp draw];
    
    Triangle *triangle =[Triangle shapeWithColor:Kred andRect:(SPRect){20,30,40,50}];
    
    [triangle draw];
    
    
    return 0;
}
