//
//  main.m
//  Lesson1
//
//  Created by Evgeny Kolesnik on 18.07.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        double i;
        printf("Введите первое число: ");
        scanf("%lf", &i);
        
        double w;
        printf("Введите второе число: ");
        scanf("%lf", &w);
        
        char act;
        printf("Введите знак действия, которое вы хотите произвести с числами: ");
        scanf("%s", &act);
        
        if (act == '+') {
            NSLog(@"Результат сложения: %lf и %lf = %lf", i, w, i + w);
        } else if (act == '-') {
            NSLog(@"Результат вычетания %lf из %lf = %lf", i, w, i - w);
        } else if (act == '/') {
            NSLog(@"Результат деления %lf на %lf = %lf", i, w, i / w);
        } else {
            NSLog(@"Результат умножения %lf на %lf = %lf", i, w, i * w);
        }
    }
    return 0;
}
