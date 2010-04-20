//
//  xutils_exampleViewController.m
//  xutils-example
//
//  Created by Shaikh Sonny Aman on 4/2/10.
//  Copyright SHAIKH SONNY AMAN :)  2010. All rights reserved.
//

#import "xutils_exampleViewController.h"





@implementation xutils_exampleViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


//*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	
	
	// initialize facebook agent
		
	
	// intialize twitter agent
	twit = [[TwitterAgent alloc] init];
}
//*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[twit release];
	
	
    [super dealloc];
}

-(IBAction) OnTwitter:(id)sender{
	[[TwitterAgent defaultAgent] twit:@"Search with google!" withLink:@"http://www.google.com" makeTiny:NO];
}
-(IBAction) OnFacebook:(id)sender{
	// you have to create a facebook app first! 
	// if done, delete the following two lines :)
	//ALERT(@"Have you created a facebook app?",@"You need to supply valid facebook app api key and ape secret");
	//return;
	
	
	[[FacebookAgent sharedAgent] setDelegate:self];
	[[FacebookAgent sharedAgent] publishFeedWithName:@"Hellow world" 
					 captionText:@"how are you?" 
						imageurl:@"http://amanpages.com/wordpress/wp-content/uploads/2009/12/logo2.png" 
						 linkurl:@"http://amanpages.com/" 
			   userMessagePrompt:@"What do i think:"];
}

// override delegate methods of FacebookAgentDelegate
- (void) facebookAgent:(FacebookAgent*)agent loginStatus:(BOOL) loggedIn{
}
- (void) facebookAgent:(FacebookAgent*)agent requestFaild:(NSString*) message{
}
- (void) facebookAgent:(FacebookAgent*)agent statusChanged:(BOOL) success{
}
- (void) facebookAgent:(FacebookAgent*)agent photoUploaded:(NSString*) pid{
}

- (void) facebookAgent:(FacebookAgent*)agent dialog:(FBDialog*)dialog didFailWithError:(NSError*)error{
}

@end
