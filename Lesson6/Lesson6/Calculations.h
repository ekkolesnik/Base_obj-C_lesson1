//
//  Calculations.h
//  Lesson6
//
//  Created by Evgeny Kolesnik on 22.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef int (^ComputingBlock) (int a, int b);

typedef enum ActionBlock {
    ActionBlockSum = 1,
    ActionBlockSubstract = 2,
    ActionBlockMultiply = 3,
    ActionBlockDivide = 4,
    ActionBlockModulo = 5,
    ActionBlockSumSquares = 6
} ActionBlock;

@interface Calculations : NSObject

+ (int)beginWithAction: (ActionBlock) action firstNumber: (int)firstNumber secondNumber: (int)secondNumber;

@end

NS_ASSUME_NONNULL_END
