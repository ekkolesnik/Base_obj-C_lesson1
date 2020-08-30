//
//  Ball.h
//  Lesson7
//
//  Created by Evgeny Kolesnik on 29.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Ball : NSObject <NSSecureCoding>

@property (nonatomic) NSString *color;
@property (nonatomic) NSString *type;

+ (Ball *)readBall;
- (void)writeBall;

@end

NS_ASSUME_NONNULL_END
