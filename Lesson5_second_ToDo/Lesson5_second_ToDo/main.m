//
//  main.m
//  Lesson5_second_ToDo
//
//  Created by Evgeny Kolesnik on 16.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flock.h"
#import "Bird.h"

int main(int argc, const char * argv[]) {
    
    Flock *flock = [[Flock alloc] init];
    
    Bird *bird1 = [[Bird alloc] initWithNumber:@1];
    Bird *bird2 = [[Bird alloc] initWithNumber:@2];
    Bird *bird3 = [[Bird alloc] initWithNumber:@3];
    Bird *bird4 = [[Bird alloc] initWithNumber:@4];
    
    NSArray *birds = [[NSArray alloc] initWithObjects:bird1, bird2, bird3, bird4, nil];
    
    [flock createWithBird:birds];
    
    [flock release];
    
    return 0;
}
