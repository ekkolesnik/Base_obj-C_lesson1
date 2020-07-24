//
//  Test.h
//  Lesson2_calculate
//
//  Created by Evgeny Kolesnik on 24.07.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Test : NSObject

//- (int)calculateWithMethod:(NSString *)method value1:(NSNumber *)value1 andValue2:(NSNumber *)value2;

- (int)plus:(NSNumber *)value1 andValue2:(NSNumber *)value2;
- (int)minus:(NSNumber *)value1 andValue2:(NSNumber *)value2;
- (int)multiplication:(NSNumber *)value1 andValue2:(NSNumber *)value2;
- (int)division:(NSNumber *)value1 andValue2:(NSNumber *)value2;

@end

NS_ASSUME_NONNULL_END
