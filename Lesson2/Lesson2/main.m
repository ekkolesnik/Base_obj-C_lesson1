//
//  main.m
//  Lesson2
//
//  Created by Evgeny Kolesnik on 24.07.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char act;
        printf("Введите букву английского алфавита: ");
        scanf("%s", &act);
        
        NSString *letter = [NSString stringWithUTF8String:&act];
        
        NSString *letterUppercase = [letter uppercaseString];
        
        NSString *alphabet = @"ABCDEFGHIKLMNOPQRSTVXYZ";
        
        if ([alphabet containsString:letterUppercase]) {
            NSLog(@"Привильно");
        } else {
            NSLog(@"Не правильно");
        }
    }
    return 0;
}
