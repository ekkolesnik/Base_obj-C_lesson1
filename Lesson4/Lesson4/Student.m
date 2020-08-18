//
//  Student.m
//  Lesson4
//
//  Created by Evgeny Kolesnik on 10.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithName: (NSString *)name
           surname: (NSString *)surname
               age: (NSNumber *)age {
    self = [super init];
    if (self) {
        _name = name;
        _surname = surname;
        _fullName = [NSString stringWithFormat: @"%@ %@", name, surname];
        self->_age = age;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"\n Студент: \n Имя = %@,\n Фамилия = %@,\n Имя + Фамилия = %@,\n Возраст = %@", _name, _surname, _fullName, _age];
}

- (void)print {
    NSLog(@"%@", self.description);
}

- (void)increasingAge {
    int intAge = [self.age intValue];
    intAge += 1;
    self->_age = [NSNumber numberWithInt:intAge];
}

@end
