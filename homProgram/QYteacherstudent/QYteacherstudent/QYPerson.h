//
//  QYPerson.h
//  
//
//  Created by qingyun on 15/10/23.
//
//

#import <Foundation/Foundation.h>

@interface QYPerson : NSObject
{
    NSString *_name;
    int _age;
    NSString *_native;
}

- (void)setName:(NSString *)name ;
- (NSString *)name;

- (void)setAge:(int)age;
- (int)age;

- (void)setNative:(NSString *)native;
- (NSString *)native;

- (void)introdece;

@end

