//
//  AppDelegate.m
//  Lesson 13 HW 2
//
//  Created by Alex on 26.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "AppDelegate.h"
#import "APStudent.h"
#import "APStudentOperation.h"

@interface AppDelegate ()


@property (strong, nonatomic) NSMutableArray* arraySorted;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    APStudent* student1 = [[APStudent alloc] init];
    student1.name = @"nameStudent1";
    
    APStudent* student2 = [[APStudent alloc] init];
    student2.name = @"nameStudent2";
    
    APStudent* student3 = [[APStudent alloc] init];
    student3.name = @"nameStudent3";
    
    APStudent* student4 = [[APStudent alloc] init];
    student4.name = @"nameStudent4";
    
    APStudent* student5 = [[APStudent alloc] init];
    student5.name = @"nameStudent5";
    
    
    NSArray* array = [[NSArray alloc] initWithObjects:student1,
                      student2,
                      student3,
                      student4,
                      student5, nil];


    for (APStudent* students in array) {
        
        [students guessAnswer:arc4random_uniform(100) withRangeFrom:0 withRangeTo:100 blockForResult:^(NSString * name1, NSInteger answer1, double finishedTime1) {
            NSLog(@"** %@ guessed RIGHT - %ld in %.7f seconds", name1, answer1, finishedTime1);
        }
         ];
        
        
    }
    

    APStudentOperation* student6 = [[APStudentOperation alloc] init];
    student6.name = @"nameStudent6";
    
    APStudentOperation* student7 = [[APStudentOperation alloc] init];
    student7.name = @"nameStudent7";
    
    APStudentOperation* student8 = [[APStudentOperation alloc] init];
    student8.name = @"nameStudent8";
    
    APStudentOperation* student9 = [[APStudentOperation alloc] init];
    student9.name = @"nameStudent9";
    
    APStudentOperation* student10 = [[APStudentOperation alloc] init];
    student10.name = @"nameStudent10";
    
    
    NSArray* arrayOperation = [[NSArray alloc] initWithObjects:student6,
                      student7,
                      student8,
                      student9,
                      student10, nil];
    
    
    for (APStudentOperation* students in arrayOperation) {
        
        [students guessAnswer:arc4random_uniform(100) withRangeFrom:0 withRangeTo:100 blockForResult:^(NSString * name1, NSInteger answer1, double finishedTime1) {
            NSLog(@"** %@ guessed RIGHT - %ld in %.7f seconds", name1, answer1, finishedTime1);
        }
         ];
        
        
    }

    
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
