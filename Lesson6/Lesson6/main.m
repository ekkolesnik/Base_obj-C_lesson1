//
//  main.m
//  Lesson6
//
//  Created by Evgeny Kolesnik on 22.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculations.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int firstNumber = 26;
        int secondNumber = 2;
        
        int sum = [Calculations beginWithAction: 1 firstNumber:firstNumber secondNumber:secondNumber];
        int substract = [Calculations beginWithAction: 2 firstNumber:firstNumber secondNumber:secondNumber];
        int multiply = [Calculations beginWithAction: 3 firstNumber:firstNumber secondNumber:secondNumber];
        int divide = [Calculations beginWithAction: 4 firstNumber:firstNumber secondNumber:secondNumber];
        int modulo = [Calculations beginWithAction: 5 firstNumber:firstNumber secondNumber:secondNumber];
        int sumSquares = [Calculations beginWithAction: 6 firstNumber:firstNumber secondNumber:secondNumber];
        
        dispatch_queue_t asyncQueue = dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0);
        dispatch_async(asyncQueue, ^{
            NSLog(@"Тест 1");
            NSLog(@"Тест 2");
            NSLog(@"Тест 3");
            NSLog(@"Тест 4");
            NSLog(@"Тест 5");
            NSLog(@"Тест 6");
            NSLog(@"Тест 7");
            NSLog(@"Тест 8");
            NSLog(@"Тест 9");
            NSLog(@"Тест 10");
        });
        
        // Создаём парралельную очередь consecutiveQueue
        dispatch_queue_t consecutiveQueue = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
        // Добавление синхронизации
        dispatch_sync(consecutiveQueue, ^{
            NSLog(@"%d + %d = %d", firstNumber, secondNumber, sum);
            NSLog(@"%d - %d = %d", firstNumber, secondNumber, substract);
        });
        
        // Заморозка consecutiveQueue
        dispatch_suspend(consecutiveQueue);
        
        // Создаём ещё одну очередь
        dispatch_queue_t anotherQueue = dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0);
        dispatch_async(anotherQueue, ^{
            NSLog(@"%d * %d = %d", firstNumber, secondNumber, multiply);
            NSLog(@"%d / %d = %d", firstNumber, secondNumber, divide);
        });
        
        // Создание очереди NSOperationQueue
        NSOperationQueue *operationQueue = [NSOperationQueue new];
        [operationQueue addOperationWithBlock:^{
            NSLog(@"%d %% %d = %d", firstNumber, secondNumber, modulo);
        }];
        [operationQueue addOperationWithBlock:^{
            NSLog(@"%d^2 + %d^2 = %d", firstNumber, secondNumber, sumSquares);
        }];
        
        // Разморозка consecutiveQueue
        dispatch_resume(consecutiveQueue);
        
    }
    return 0;
}
