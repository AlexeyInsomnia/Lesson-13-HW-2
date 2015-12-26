//
//  APStudent.m
//  Lesson 13 HW 2
//
//  Created by Alex on 26.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "APStudent.h"
#import <UIKit/UIKit.h>

@interface APStudent ()

+ (dispatch_queue_t) studentsQueue;

@end

@implementation APStudent




- (void) guessAnswer:(NSInteger) rightAnswer
       withRangeFrom:(NSInteger) startRange
         withRangeTo:(NSInteger) endRange
    blockForResult:(void(^)(NSString*, NSInteger, double)) block{
    
    //dispatch_queue_t queue = dispatch_queue_create("com.alex.testthreads,queue", DISPATCH_QUEUE_CONCURRENT);
    
    //dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    //__weak APStudent* weakSelf = self;
    
    //dispatch_async(queue, ^{
    dispatch_async([APStudent studentsQueue], ^{
        NSInteger answer = 0;
        
        double startTime = CACurrentMediaTime();
        
        NSLog(@"student - %@ must guess number - %ld", self.name, rightAnswer);
        
        while (answer != rightAnswer) {
            
            answer = (arc4random () % (endRange - startRange) + startRange);
        }
        double finishedTime =CACurrentMediaTime() - startTime;
        block(self.name, answer, finishedTime);
    });
            //NSLog(@"*************student - %@ guessed RIGHT - %ld in %.7f seconds", self.name, answer, finishedTime);
 
    
    
}

+ (dispatch_queue_t) studentsQueue {
    static dispatch_queue_t queue;

    
    static dispatch_once_t  task;
    dispatch_once(&task, ^{
        queue = dispatch_queue_create("ap.students.Queue", DISPATCH_QUEUE_CONCURRENT);
    });
    return queue;
}

@end
