//
//  Bird.h
//  Lesson5_second_ToDo
//
//  Created by Evgeny Kolesnik on 16.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

-(instancetype) initWithNumber:(NSNumber *)number;
@property (nonatomic, strong) NSNumber *number;
@property (nonatomic, strong) NSString *leftWing;
@property (nonatomic, strong) NSString *rightWing;
@end

NS_ASSUME_NONNULL_END
