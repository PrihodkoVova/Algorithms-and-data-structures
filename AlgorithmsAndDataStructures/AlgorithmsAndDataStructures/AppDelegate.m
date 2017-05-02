//
//  AppDelegate.m
//  AlgorithmsAndDataStructures
//
//  Created by Vova on 5/2/17.
//  Copyright © 2017 Vova. All rights reserved.
//

#import "AppDelegate.h"
#import "NSArray+Safip.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSMutableArray *array = [NSMutableArray array];
    
    for (int i = 0; i < 100; i++)
    {
        [array addObject:@(arc4random_uniform(1000))];
    }
    NSLog(@"Start Array: %@", array);
    NSLog(@"Sorted Array: %@", [array quickSort]);

}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
