//
//  Test.m
//  Lesson2_calculate
//
//  Created by Evgeny Kolesnik on 24.07.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import "Test.h"

@implementation Test

- (int)plus:(NSNumber *)value1 andValue2:(NSNumber *)value2 {
    return [value1 intValue] + [value2 intValue];
}

- (int)minus:(NSNumber *)value1 andValue2:(NSNumber *)value2 {
    return [value1 intValue] - [value2 intValue];
}

- (int)multiplication:(NSNumber *)value1 andValue2:(NSNumber *)value2 {
    return [value1 intValue] * [value2 intValue];
}

- (int)division:(NSNumber *)value1 andValue2:(NSNumber *)value2 {
    return [value1 intValue] / [value2 intValue];
}

@end
