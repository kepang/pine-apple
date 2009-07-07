//
//  PopupViewController.m
//  iClicky
//
//  Created by Jesse Chahal on 6/29/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PopupViewController.h"
#import "iClickyAppDelegate.h"


@implementation PopupViewController
@synthesize studentID;
@synthesize firstName;
@synthesize lastName;
@synthesize email;

- (IBAction)submitPressed {
	/*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Please fill in all fields" message:@"" 
						delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	
	NSString *plistName = [[NSString alloc] initWithFormat:@"uData"];
	NSArray *paths = NSSearchPathForDirectoriesInDomains(
														 NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *myPlistPath = [documentsDirectory stringByAppendingPathComponent: 
							 [NSString stringWithFormat: @"%@.plist", plistName]];
	
	
	if([studentID.text isEqualToString:@""] || [firstName.text isEqualToString:@""] || [lastName.text isEqualToString:@""] || [email.text isEqualToString:@""]) {
		[alert show];
	}
	else {
		//save user entered data to file HERE
		NSString *string = [[NSString alloc] initWithFormat:@"%@,%@,%@,%@",studentID.text,firstName.text,lastName.text,email.text];
		[string writeToFile:myPlistPath atomically:YES];
		
		//[self.view insertSubview:self.LoginViewController.view atIndex:0];
	}*/
	//[[self parentViewController] dismissModalViewControllerAnimated:YES];
}


- (IBAction)doneEditing:(id)sender {
	[sender resignFirstResponder];
}
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

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}


@end
