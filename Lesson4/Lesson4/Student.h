//
//  Student.h
//  Lesson4
//
//  Created by Evgeny Kolesnik on 10.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *surname;
@property (nonatomic) NSString *fullName;
@property (readonly, copy) NSNumber *age;

- (instancetype)initWithName: (NSString *)name surname: (NSString *)surname age: (NSNumber *)age;

- (NSString*)description;
- (void)print;
- (void)increasingAge;

@end

NS_ASSUME_NONNULL_END
