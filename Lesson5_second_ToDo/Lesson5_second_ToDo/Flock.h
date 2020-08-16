//
//  Flock.h
//  Lesson5_second_ToDo
//
//  Created by Evgeny Kolesnik on 16.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

- (void)createWithBird:(NSArray *)bird;
@property (nonatomic, strong) NSArray *bird;

@end

NS_ASSUME_NONNULL_END
