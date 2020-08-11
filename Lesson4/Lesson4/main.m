//
//  main.m
//  Lesson4
//
//  Created by Evgeny Kolesnik on 10.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *student = [[Student alloc] initWithName:@"Иван" surname:@"Кубышкин" age:[NSNumber numberWithInt:25]];
        printf("Вывод стутенда \n");
        [student print];
        printf("\nВывод стутенда с использованием метода увеличения лет \n");
        [student increasingAge];
        [student print];
        
        Student *student2 = [[Student alloc] initWithName:@"Григорий" surname:@"Симицкий" age:[NSNumber numberWithInt:23]];
        printf("\nВывод стутенда \n");
        [student2 print];
    }
    return 0;
}
