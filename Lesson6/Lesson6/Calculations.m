//
//  Calculations.m
//  Lesson6
//
//  Created by Evgeny Kolesnik on 22.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import "Calculations.h"

@implementation Calculations

ComputingBlock sum = ^(int a, int b) {
    return a + b;
};

ComputingBlock substract = ^(int a, int b) {
    return a - b;
};

ComputingBlock multiply = ^(int a, int b) {
    return a * b;
};

ComputingBlock divide = ^(int a, int b) {
    if (b != 0) {
        return a / b;
    }
    return 0;
};

ComputingBlock modulo = ^(int a, int b) {
    if (b != 0) {
        return a % b;
    }
    return 0;
};

ComputingBlock sumSquares = ^(int a, int b) {
    return a * a + b * b;
};


+ (int)beginWithAction: (ActionBlock) action firstNumber: (int)firstNumber secondNumber: (int)secondNumber
{
    switch (action) {
        case 1:
            return sum(firstNumber, secondNumber);
            break;
        case 2:
            return substract(firstNumber, secondNumber);
            break;
        case 3:
            return multiply(firstNumber, secondNumber);
            break;
        case 4:
            return divide(firstNumber, secondNumber);
            break;
        case 5:
            return modulo(firstNumber, secondNumber);
            break;
        case 6:
            return sumSquares(firstNumber, secondNumber);
            break;
        default:
            NSLog(@"Действие недействительно или не поддерживается");
            return 0;
            break;
    }
};

@end
