//
//  main.m
//  Lesson5
//
//  Created by Evgeny Kolesnik on 16.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Test.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Test * calculator = [[Test alloc] init];
        
        [calculator autorelease];
        
        int a = [calculator plus:@2 andValue2:@3];
        int b = [calculator minus:@2 andValue2:@3];
        int c = [calculator multiplication:@2 andValue2:@3];
        int d = [calculator division:@2 andValue2:@3];
        NSLog(@"Result: \n a = %i, \n b = %i, \n c = %i, \n d = %i", a, b, c, d);
        
    }
    return 0;
}
