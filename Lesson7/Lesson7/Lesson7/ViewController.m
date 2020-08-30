//
//  ViewController.m
//  Lesson7
//
//  Created by Evgeny Kolesnik on 29.08.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

#import "ViewController.h"
#import "Ball.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Ball *ball = [Ball new];
    ball.color = @"yellow";
    ball.type = @"basketball";
    [ball writeBall];
    NSLog(@"%@", ball);
//    Ball *ball1 = [Ball readBall];
//    NSLog(@"%@", ball1);
}


@end
