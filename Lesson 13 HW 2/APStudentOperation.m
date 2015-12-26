//
//  APStudentOperation.m
//  Lesson 13 HW 2
//
//  Created by Alex on 27.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "APStudentOperation.h"

#import <UIKit/UIKit.h>

@interface APStudentOperation ()

+ (NSOperationQueue*) studentsQueue;

@end

@implementation APStudentOperation



- (void) guessAnswer:(NSInteger) rightAnswer
       withRangeFrom:(NSInteger) startRange
         withRangeTo:(NSInteger) endRange
      blockForResult:(void(^)(NSString*, NSInteger, double)) block{
    
       // __weak APStudentOperation* weakSelf = self;
    
    [[APStudentOperation studentsQueue] addOperationWithBlock:^{
        NSInteger answer = 0;
        
        double startTime = CACurrentMediaTime();
        
        NSLog(@"student - %@ must guess number - %ld", self.name, rightAnswer);
        
        while (answer != rightAnswer) {
            
            answer = (arc4random () % (endRange - startRange) + startRange);
        }
        double finishedTime =CACurrentMediaTime() - startTime;
        block(self.name, answer, finishedTime);
    }];
    
}

+ (NSOperationQueue*) studentsQueue {
    static NSOperationQueue* queue = nil;
    static dispatch_once_t task;
    dispatch_once(&task, ^{
        queue = [[NSOperationQueue alloc ] init];
    });
    return queue;
}

@end
