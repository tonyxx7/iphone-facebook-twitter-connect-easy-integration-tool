//
//  xutils_exampleAppDelegate.m
//  xutils-example
//
//  Created by Shaikh Sonny Aman on 4/2/10.
//  Copyright SHAIKH SONNY AMAN :)  2010. All rights reserved.
//

#import "xutils_exampleAppDelegate.h"
#import "xutils_exampleViewController.h"
#import "FacebookAgent.h"

@implementation xutils_exampleAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
 
	
	[[FacebookAgent sharedAgent] initializeWithApiKey:@"e86f2c93c21e4084e5498b46535d19af" 
											ApiSecret:@"6e24ecca21af93b73d4617cd75980084" 
											 ApiProxy:nil];
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
