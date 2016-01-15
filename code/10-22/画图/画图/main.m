//
//  main.m
//  画图
//
//  Created by qingyun on 15/10/22.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>
//图形形状
typedef enum {
    kCircle,
    kRectangle,
    kEgg
}ShapeType;

//图形颜色
typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
}ShapeColor;

//图形坐标
typedef struct {
    int x,y,width,height;
}ShapeRect;

//整体描绘一个图形
typedef struct {
    ShapeType type;
    ShapeColor fillcolor;
    ShapeRect bounds;
}Shape;

@interface Circle : NSObject
{
    ShapeColor _fillcolor;
    ShapeRect _bounds;
}

-(void)setFillColor:(ShapeColor)fillcolor;
-(ShapeColor)fillcolor;

-(void)setBound:(ShapeRect)bounds;
-(ShapeColor)bounds;

-(void)draw;

@end

@implementation Circle
-(void)setFillColor:(ShapeColor)c
{
    _fillcolor=c;
}
-(ShapeColor)c
{
    return _fillcolor;
}



@end
int main(int argc, const char * argv[]) {
    
  
    
    return 0;
}
