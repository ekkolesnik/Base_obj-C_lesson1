//
//  Flock.m
//  Lesson5_second_ToDo
//
//  Created by Evgeny Kolesnik on 16.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import "Flock.h"
#import "Bird.h"

@implementation Flock

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"Создание стаи");
    }
    return self;
}

- (void)createWithBird:(NSArray *)bird {
    [bird retain];
    [bird release];
    _bird = bird;
    for (Bird *bird in _bird) {
        NSLog(@"Добавляем птицу (%@) в стаю", bird.number);
    }
}

- (void) remove {
    NSLog(@"Удаляем птицу из стаи");
    for (Bird *bird in _bird) {
        [bird release];
    }
    [_bird release];
}

- (void) dealloc {
    [self remove];
    NSLog(@"Dealloc Flock");
    [super dealloc];
}

@end
