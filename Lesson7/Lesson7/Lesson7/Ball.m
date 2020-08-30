//
//  Ball.m
//  Lesson7
//
//  Created by Evgeny Kolesnik on 29.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import "Ball.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation Ball

//Подготовка initWithCoder и encodeWithCoder для использования NSSecureCoding
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        self.color = [aDecoder decodeObjectForKey:@"color"];
        self.type = [aDecoder decodeObjectForKey:@"type"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.color forKey:@"color"];
    [aCoder encodeObject:self.type forKey:@"type"];
}

// supportsSecureCoding необходим для использования NSSecureCoding
- (BOOL)supportsSecureCoding {
    return YES;
}

// Путь к файлу в котором сохраняются данные
+ (NSString *)directory {
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    path = [path stringByAppendingPathComponent:@"ball.txt"];
//    NSLog(@"%@", path);
    return path;
}

// чтение из файла
+ (Ball *)readBall {
    NSData *data = [NSData dataWithContentsOfFile:[self directory]];
    NSError *error;
    Ball *ball = [NSKeyedUnarchiver unarchivedObjectOfClass:[Ball class] fromData:data error:&error];
    if (error) {
        NSLog(@"Ball: read - %@", error);
        return nil;
    }
    return ball;
}


// Запись в файл
- (void)writeBall {
    NSError *error;
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:NO error:&error];
    if (error) {
        NSLog(@"Ball: write - %@", error);
        return;
    }
    [data writeToFile:[Ball directory] atomically:YES];
}

- (NSString *)description {
    NSMutableDictionary *values = [NSMutableDictionary new];
    unsigned int count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    id (*id_objc_msgSend)(id, SEL) = (id (*)(id, SEL)) objc_msgSend;
    for (int i = 0; i < count; i++) {
        objc_property_t property = properties[i];
        const char *name = property_getName(property);
        const char *attributes = property_getAttributes(property);
        if (attributes[1] == '@') {
            NSString *selector = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
            SEL sel = sel_registerName([selector UTF8String]);
            NSObject *value = id_objc_msgSend(self, sel);
            values[selector] = value.description;
        }
    }
    free(properties);
    return [NSString stringWithFormat:@"%@: %@", self.class, values];
}

@end
