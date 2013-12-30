//
//  CalculatorAppDelegate.m
//  Calculator
//
//  Created by Abhishek Fatehpuria on 6/25/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

#import "CalculatorAppDelegate.h"
#import "CalculatorViewController.h"

@implementation CalculatorAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
