//
//  Bird.m
//  Lesson5_second_ToDo
//
//  Created by Evgeny Kolesnik on 16.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import "Bird.h"

@implementation Bird

- (instancetype)initWithNumber:(NSNumber *)number {
    self = [super init];
    if (self) {
        [number retain];
        [number release];
        _number = number;
        NSLog(@"Создание птицы %@", number);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc Bird - %@", _number);
    [_number release];
    [super dealloc];
}

@end
