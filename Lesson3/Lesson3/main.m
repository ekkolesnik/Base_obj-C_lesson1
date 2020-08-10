//
//  main.m
//  Lesson3
//
//  Created by Evgeny Kolesnik on 09.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *array = @[@"Gleb", @"Jon", @"Albert"];
        
        NSLog(@"Использование цикла 'for'");
        
        for (int i = 0; i < [array count] && ![[array[i] description]  isEqual: @"Jorj"]; i++) {
            NSLog(@"%@", array[i]);
        }
        
        NSLog(@"Использование цикла 'while'");
        
        int i = 0;
        while (i < [array count]) {
            NSLog(@"%@", array[i]);
            i++;
        }
        
        NSLog(@"Использование цикла 'for' с оператором continue");
        
        for (int i = 0; i < [array count] && ![[array[i] description]  isEqual: @"Jorj"]; i++) {
            if ([array[i]  isEqual: @"Jon"]) {
                continue;
            }
            
            NSLog(@"%@", array[i]);
        }
        
    }
    return 0;
}
