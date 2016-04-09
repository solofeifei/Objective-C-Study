//
//  main.m
//  ClassObjectMethodStudy
//
//  Created by solo on 16/4/9.
//  Copyright © 2016年 solo. All rights reserved.
//

#import <Foundation/Foundation.h>

//   类的描述和方法定义  @interface 部分
@interface Fraction : NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
@end


//   类的实现部分 @implementation 本分


@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

@end


//      程序部分

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *myFraction = [[Fraction alloc] init];
        //给类的对象设置参数
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        NSLog(@"the value of myFraction is:");
        [myFraction print];
    }
    return 0;
}
