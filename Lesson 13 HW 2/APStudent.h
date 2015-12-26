//
//  APStudent.h
//  Lesson 13 HW 2
//
//  Created by Alex on 26.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APStudent : NSObject

@property (strong, nonatomic) NSString* name;


- (void) guessAnswer:(NSInteger) rightAnswer
       withRangeFrom:(NSInteger) startRange
         withRangeTo:(NSInteger) endRange
      blockForResult:(void(^)(NSString*, NSInteger, double)) block ;




@end
