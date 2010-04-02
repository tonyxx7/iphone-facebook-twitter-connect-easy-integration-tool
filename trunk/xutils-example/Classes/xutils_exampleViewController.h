//
//  xutils_exampleViewController.h
//  xutils-example
//
//  Created by Shaikh Sonny Aman on 4/2/10.
//  Copyright SHAIKH SONNY AMAN :)  2010. All rights reserved.
//

#import <UIKit/UIKit.h>

/////////////////////////
// Import these two header
#import "FacebookAgent.h"
#import "TwitterAgent.h"
// for some helper macro
#import "xmacros.h"

//////////////////////////

@interface xutils_exampleViewController : UIViewController<FacebookAgentDelegate> {

	// Declare these two varialbes
	FacebookAgent* fbAgent;
	TwitterAgent* twit;
	//////////////////////////////
}

-(IBAction) OnTwitter:(id)sender;
-(IBAction) OnFacebook:(id)sender;

@end

